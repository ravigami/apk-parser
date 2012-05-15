.class final Lcom/yingyonghui/market/ch;
.super Ljava/lang/Object;
.source "HttpServiceSupportForActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/HttpServiceSupportForActivity;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/HttpServiceSupportForActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/yingyonghui/market/ch;->a:Lcom/yingyonghui/market/HttpServiceSupportForActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 82
    return-void
.end method
