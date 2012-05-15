.class final Lcom/yingyonghui/market/ab;
.super Ljava/lang/Object;
.source "ActivityListAppManage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yingyonghui/market/ActivityListAppManage;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityListAppManage;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/yingyonghui/market/ab;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 154
    new-instance v0, Lcom/yingyonghui/market/eq;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/eq;-><init>(Lcom/yingyonghui/market/ab;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/eq;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 193
    return-void
.end method
