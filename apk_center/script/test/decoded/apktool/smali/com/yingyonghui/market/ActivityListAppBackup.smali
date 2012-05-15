.class public Lcom/yingyonghui/market/ActivityListAppBackup;
.super Lcom/yingyonghui/market/AbsActivityAppListManager;
.source "ActivityListAppBackup.java"


# static fields
.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/yingyonghui/market/ActivityListAppBackup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yingyonghui/market/ActivityListAppBackup;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/yingyonghui/market/AbsActivityAppListManager;-><init>()V

    return-void
.end method
