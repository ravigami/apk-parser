.class final Lcom/yingyonghui/market/cj;
.super Ljava/lang/Object;
.source "HttpServiceSupportForTabActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/yingyonghui/market/cj;->a:Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 92
    return-void
.end method
