.class final Lcom/yingyonghui/market/fc;
.super Ljava/lang/Object;
.source "HttpServiceSupportForListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/HttpServiceSupportForListActivity;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/HttpServiceSupportForListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/yingyonghui/market/fc;->a:Lcom/yingyonghui/market/HttpServiceSupportForListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 73
    return-void
.end method
