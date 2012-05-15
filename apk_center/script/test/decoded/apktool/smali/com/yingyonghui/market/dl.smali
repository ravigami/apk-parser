.class final Lcom/yingyonghui/market/dl;
.super Ljava/lang/Object;
.source "ActivityMenuFeedback.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityMenuFeedback;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityMenuFeedback;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/yingyonghui/market/dl;->a:Lcom/yingyonghui/market/ActivityMenuFeedback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 15
    .parameter

    .prologue
    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 97
    :goto_0
    return-void

    .line 69
    :pswitch_0
    iget-object v0, p0, Lcom/yingyonghui/market/dl;->a:Lcom/yingyonghui/market/ActivityMenuFeedback;

    iget-object v1, p0, Lcom/yingyonghui/market/dl;->a:Lcom/yingyonghui/market/ActivityMenuFeedback;

    iget-object v1, v1, Lcom/yingyonghui/market/ActivityMenuFeedback;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yingyonghui/market/ActivityMenuFeedback;->e:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/yingyonghui/market/dl;->a:Lcom/yingyonghui/market/ActivityMenuFeedback;

    iget-object v1, p0, Lcom/yingyonghui/market/dl;->a:Lcom/yingyonghui/market/ActivityMenuFeedback;

    iget-object v1, v1, Lcom/yingyonghui/market/ActivityMenuFeedback;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yingyonghui/market/ActivityMenuFeedback;->f:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/yingyonghui/market/dl;->a:Lcom/yingyonghui/market/ActivityMenuFeedback;

    iget-object v0, v0, Lcom/yingyonghui/market/ActivityMenuFeedback;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/yingyonghui/market/dl;->a:Lcom/yingyonghui/market/ActivityMenuFeedback;

    const-string v1, ""

    iput-object v1, v0, Lcom/yingyonghui/market/ActivityMenuFeedback;->e:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/yingyonghui/market/dl;->a:Lcom/yingyonghui/market/ActivityMenuFeedback;

    iget-object v1, p0, Lcom/yingyonghui/market/dl;->a:Lcom/yingyonghui/market/ActivityMenuFeedback;

    const v2, 0x7f090143

    invoke-virtual {v1, v2}, Lcom/yingyonghui/market/ActivityMenuFeedback;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/dl;->a:Lcom/yingyonghui/market/ActivityMenuFeedback;

    iget-object v0, v0, Lcom/yingyonghui/market/ActivityMenuFeedback;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/yingyonghui/market/util/b;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yingyonghui/market/dl;->a:Lcom/yingyonghui/market/ActivityMenuFeedback;

    iget-object v0, v0, Lcom/yingyonghui/market/ActivityMenuFeedback;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/yingyonghui/market/util/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yingyonghui/market/dl;->a:Lcom/yingyonghui/market/ActivityMenuFeedback;

    iget-object v0, v0, Lcom/yingyonghui/market/ActivityMenuFeedback;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/yingyonghui/market/util/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yingyonghui/market/dl;->a:Lcom/yingyonghui/market/ActivityMenuFeedback;

    iget-object v0, v0, Lcom/yingyonghui/market/ActivityMenuFeedback;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/yingyonghui/market/util/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yingyonghui/market/dl;->a:Lcom/yingyonghui/market/ActivityMenuFeedback;

    iget-object v0, v0, Lcom/yingyonghui/market/ActivityMenuFeedback;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/yingyonghui/market/util/b;->c(Ljava/lang/String;)Z

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/dl;->a:Lcom/yingyonghui/market/ActivityMenuFeedback;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/ActivityMenuFeedback;->a(Lcom/yingyonghui/market/ActivityMenuFeedback;J)J

    .line 86
    iget-object v0, p0, Lcom/yingyonghui/market/dl;->a:Lcom/yingyonghui/market/ActivityMenuFeedback;

    iget-object v1, p0, Lcom/yingyonghui/market/dl;->a:Lcom/yingyonghui/market/ActivityMenuFeedback;

    const v2, 0x7f09002d

    invoke-virtual {v1, v2}, Lcom/yingyonghui/market/ActivityMenuFeedback;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 87
    iget-object v0, p0, Lcom/yingyonghui/market/dl;->a:Lcom/yingyonghui/market/ActivityMenuFeedback;

    iget-object v0, v0, Lcom/yingyonghui/market/ActivityMenuFeedback;->b:Lcom/yingyonghui/market/online/e;

    const/16 v1, 0x270f

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/yingyonghui/market/dl;->a:Lcom/yingyonghui/market/ActivityMenuFeedback;

    invoke-static {v3}, Lcom/yingyonghui/market/ActivityMenuFeedback;->a(Lcom/yingyonghui/market/ActivityMenuFeedback;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/yingyonghui/market/dl;->a:Lcom/yingyonghui/market/ActivityMenuFeedback;

    iget-object v5, v5, Lcom/yingyonghui/market/ActivityMenuFeedback;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/yingyonghui/market/dl;->a:Lcom/yingyonghui/market/ActivityMenuFeedback;

    iget-object v6, v6, Lcom/yingyonghui/market/ActivityMenuFeedback;->e:Ljava/lang/String;

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-string v13, ""

    iget-object v14, p0, Lcom/yingyonghui/market/dl;->a:Lcom/yingyonghui/market/ActivityMenuFeedback;

    iget-object v14, v14, Lcom/yingyonghui/market/ActivityMenuFeedback;->a:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v14}, Lcom/yingyonghui/market/online/e;->a(IIJLjava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Landroid/os/Handler;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityMenuFeedback;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    :pswitch_1
    iget-object v0, p0, Lcom/yingyonghui/market/dl;->a:Lcom/yingyonghui/market/ActivityMenuFeedback;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityMenuFeedback;->finish()V

    goto/16 :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x7f0b00b3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
