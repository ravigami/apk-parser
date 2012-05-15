.class final Lcom/yingyonghui/market/ed;
.super Ljava/lang/Object;
.source "ActivityWarningShowIcon.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityWarningShowIcon;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityWarningShowIcon;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/yingyonghui/market/ed;->a:Lcom/yingyonghui/market/ActivityWarningShowIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yingyonghui/market/ed;->a:Lcom/yingyonghui/market/ActivityWarningShowIcon;

    const-string v1, "checkbox_display_icons"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/util/l;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 57
    iget-object v0, p0, Lcom/yingyonghui/market/ed;->a:Lcom/yingyonghui/market/ActivityWarningShowIcon;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityWarningShowIcon;->finish()V

    .line 58
    return-void
.end method
