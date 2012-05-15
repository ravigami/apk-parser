.class final Lcom/yingyonghui/market/a;
.super Ljava/lang/Object;
.source "ActivityListAppDownload.java"

# interfaces
.implements Lcom/yingyonghui/market/l;


# instance fields
.field final synthetic a:Lcom/yingyonghui/market/ActivityListAppDownload;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityListAppDownload;)V
    .locals 0
    .parameter

    .prologue
    .line 840
    iput-object p1, p0, Lcom/yingyonghui/market/a;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 844
    new-instance v0, Lcom/yingyonghui/market/fm;

    iget-object v1, p0, Lcom/yingyonghui/market/a;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-virtual {v1}, Lcom/yingyonghui/market/ActivityListAppDownload;->getParent()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yingyonghui/market/fm;-><init>(Landroid/content/Context;)V

    .line 845
    iget-object v1, p0, Lcom/yingyonghui/market/a;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    const v2, 0x7f09014d

    invoke-virtual {v1, v2}, Lcom/yingyonghui/market/ActivityListAppDownload;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/fm;->setTitle(Ljava/lang/CharSequence;)V

    .line 846
    iget-object v1, p0, Lcom/yingyonghui/market/a;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    const v2, 0x7f09014f

    invoke-virtual {v1, v2}, Lcom/yingyonghui/market/ActivityListAppDownload;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/fm;->a(Ljava/lang/CharSequence;)V

    .line 847
    const v1, 0x7f090079

    new-instance v2, Lcom/yingyonghui/market/b;

    invoke-direct {v2, p0}, Lcom/yingyonghui/market/b;-><init>(Lcom/yingyonghui/market/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/yingyonghui/market/fm;->a(ILcom/yingyonghui/market/cf;)Lcom/yingyonghui/market/fm;

    .line 881
    const v1, 0x7f09007a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yingyonghui/market/fm;->a(ILcom/yingyonghui/market/l;)Lcom/yingyonghui/market/fm;

    .line 882
    invoke-virtual {v0}, Lcom/yingyonghui/market/fm;->show()V

    .line 883
    invoke-virtual {v0}, Lcom/yingyonghui/market/fm;->b()Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, 0x41a0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 884
    invoke-virtual {v0}, Lcom/yingyonghui/market/fm;->a()Landroid/widget/ScrollView;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 885
    return-void
.end method
