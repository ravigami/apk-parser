.class final Lcom/yingyonghui/market/bo;
.super Ljava/lang/Object;
.source "ActivityListAppDownload.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yingyonghui/market/ActivityListAppDownload;


# direct methods
.method synthetic constructor <init>(Lcom/yingyonghui/market/ActivityListAppDownload;)V
    .locals 1
    .parameter

    .prologue
    .line 660
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yingyonghui/market/bo;-><init>(Lcom/yingyonghui/market/ActivityListAppDownload;B)V

    return-void
.end method

.method private constructor <init>(Lcom/yingyonghui/market/ActivityListAppDownload;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 660
    iput-object p1, p0, Lcom/yingyonghui/market/bo;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    const/16 v5, 0xc0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 663
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 664
    if-nez v0, :cond_1

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    iget-object v1, p0, Lcom/yingyonghui/market/bo;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    iget-object v1, v1, Lcom/yingyonghui/market/ActivityListAppDownload;->d:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yingyonghui/market/model/q;

    .line 669
    if-eqz v1, :cond_0

    .line 673
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 675
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 698
    :pswitch_0
    iget v2, v1, Lcom/yingyonghui/market/model/q;->M:I

    if-ne v2, v5, :cond_2

    .line 699
    new-instance v2, Lcom/yingyonghui/market/as;

    invoke-direct {v2, p0, p1, v1}, Lcom/yingyonghui/market/as;-><init>(Lcom/yingyonghui/market/bo;Landroid/view/View;Lcom/yingyonghui/market/model/q;)V

    new-array v3, v7, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/yingyonghui/market/as;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-object v2, p1

    .line 707
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090134

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 710
    iget-object v2, p0, Lcom/yingyonghui/market/bo;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-virtual {v2}, Lcom/yingyonghui/market/ActivityListAppDownload;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "managePause"

    iget-object v4, p0, Lcom/yingyonghui/market/bo;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-virtual {v4}, Lcom/yingyonghui/market/ActivityListAppDownload;->f()Lcom/yingyonghui/market/log/m;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0, v1}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yingyonghui/market/log/m;ILjava/lang/String;)V

    .line 730
    :goto_1
    iget-object v0, p0, Lcom/yingyonghui/market/bo;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->k(Lcom/yingyonghui/market/ActivityListAppDownload;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 680
    :pswitch_1
    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/yingyonghui/market/model/q;->R:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/yingyonghui/market/util/GlobalUtil;->b(Landroid/content/Context;Ljava/io/File;)V

    .line 681
    const-string v3, "manageInstall"

    iget-object v4, p0, Lcom/yingyonghui/market/bo;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-virtual {v4}, Lcom/yingyonghui/market/ActivityListAppDownload;->f()Lcom/yingyonghui/market/log/m;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0, v1}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yingyonghui/market/log/m;ILjava/lang/String;)V

    goto :goto_0

    .line 685
    :pswitch_2
    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/yingyonghui/market/model/q;->R:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 688
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 689
    iget-object v3, p0, Lcom/yingyonghui/market/bo;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v3}, Lcom/yingyonghui/market/ActivityListAppDownload;->k(Lcom/yingyonghui/market/ActivityListAppDownload;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/yingyonghui/market/bo;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v4}, Lcom/yingyonghui/market/ActivityListAppDownload;->k(Lcom/yingyonghui/market/ActivityListAppDownload;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x67

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 690
    const v3, 0x7f09012a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 691
    const-string v3, "manageDelete"

    iget-object v4, p0, Lcom/yingyonghui/market/bo;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-virtual {v4}, Lcom/yingyonghui/market/ActivityListAppDownload;->f()Lcom/yingyonghui/market/log/m;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v5, v1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0, v5}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yingyonghui/market/log/m;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 692
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 694
    const v0, 0x7f09012b

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v1, v1, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    aput-object v1, v3, v7

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 712
    :cond_2
    new-instance v2, Lcom/yingyonghui/market/aq;

    invoke-direct {v2, p0, p1, v1}, Lcom/yingyonghui/market/aq;-><init>(Lcom/yingyonghui/market/bo;Landroid/view/View;Lcom/yingyonghui/market/model/q;)V

    new-array v3, v7, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/yingyonghui/market/aq;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-object v2, p1

    .line 725
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090133

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 726
    iput v5, v1, Lcom/yingyonghui/market/model/q;->M:I

    .line 728
    iget-object v2, p0, Lcom/yingyonghui/market/bo;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-virtual {v2}, Lcom/yingyonghui/market/ActivityListAppDownload;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "manageResume"

    iget-object v4, p0, Lcom/yingyonghui/market/bo;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-virtual {v4}, Lcom/yingyonghui/market/ActivityListAppDownload;->f()Lcom/yingyonghui/market/log/m;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0, v1}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yingyonghui/market/log/m;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 733
    :pswitch_3
    new-instance v2, Lcom/yingyonghui/market/ar;

    invoke-direct {v2, p0, p1, v1}, Lcom/yingyonghui/market/ar;-><init>(Lcom/yingyonghui/market/bo;Landroid/view/View;Lcom/yingyonghui/market/model/q;)V

    new-array v3, v7, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/yingyonghui/market/ar;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 741
    iget-object v2, p0, Lcom/yingyonghui/market/bo;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-virtual {v2}, Lcom/yingyonghui/market/ActivityListAppDownload;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "manageCancel"

    iget-object v4, p0, Lcom/yingyonghui/market/bo;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-virtual {v4}, Lcom/yingyonghui/market/ActivityListAppDownload;->f()Lcom/yingyonghui/market/log/m;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0, v1}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yingyonghui/market/log/m;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 675
    :pswitch_data_0
    .packed-switch 0x7f0b00c3
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
