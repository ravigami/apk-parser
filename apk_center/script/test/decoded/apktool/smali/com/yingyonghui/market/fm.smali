.class public final Lcom/yingyonghui/market/fm;
.super Landroid/app/Dialog;
.source "DialogWarning.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/yingyonghui/market/cf;

.field private b:Lcom/yingyonghui/market/l;

.field private c:Ljava/lang/CharSequence;

.field private d:Ljava/lang/CharSequence;

.field private e:Landroid/widget/ScrollView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Ljava/lang/CharSequence;

.field private l:Ljava/lang/CharSequence;

.field private m:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    const v0, 0x7f0a000a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 41
    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/yingyonghui/market/fm;->e:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public final a(ILcom/yingyonghui/market/cf;)Lcom/yingyonghui/market/fm;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/yingyonghui/market/fm;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/fm;->k:Ljava/lang/CharSequence;

    .line 52
    iput-object p2, p0, Lcom/yingyonghui/market/fm;->a:Lcom/yingyonghui/market/cf;

    .line 53
    return-object p0
.end method

.method public final a(ILcom/yingyonghui/market/l;)Lcom/yingyonghui/market/fm;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/yingyonghui/market/fm;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/fm;->l:Ljava/lang/CharSequence;

    .line 66
    iput-object p2, p0, Lcom/yingyonghui/market/fm;->b:Lcom/yingyonghui/market/l;

    .line 67
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/yingyonghui/market/fm;->d:Ljava/lang/CharSequence;

    .line 77
    return-void
.end method

.method public final b()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/yingyonghui/market/fm;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method public final c()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yingyonghui/market/fm;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method public final d()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yingyonghui/market/fm;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method public final e()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/yingyonghui/market/fm;->j:Landroid/widget/Button;

    return-object v0
.end method

.method public final f()Landroid/view/View;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/yingyonghui/market/fm;->m:Landroid/view/View;

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 159
    :goto_0
    return-void

    .line 147
    :pswitch_0
    iget-object v0, p0, Lcom/yingyonghui/market/fm;->a:Lcom/yingyonghui/market/cf;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/yingyonghui/market/fm;->a:Lcom/yingyonghui/market/cf;

    invoke-interface {v0}, Lcom/yingyonghui/market/cf;->a()V

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/yingyonghui/market/fm;->dismiss()V

    goto :goto_0

    .line 153
    :pswitch_1
    iget-object v0, p0, Lcom/yingyonghui/market/fm;->b:Lcom/yingyonghui/market/l;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/yingyonghui/market/fm;->b:Lcom/yingyonghui/market/l;

    invoke-interface {v0}, Lcom/yingyonghui/market/l;->a()V

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/yingyonghui/market/fm;->dismiss()V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x1020019
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 110
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/fm;->setContentView(I)V

    .line 112
    const v0, 0x7f0b00bd

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/fm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/yingyonghui/market/fm;->e:Landroid/widget/ScrollView;

    .line 113
    invoke-static {}, Lcom/yingyonghui/market/util/q;->a()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/yingyonghui/market/fm;->e:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 116
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    .line 117
    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    .line 118
    const-string v2, "setScrollbarFadingEnabled"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 119
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 120
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 121
    iget-object v2, p0, Lcom/yingyonghui/market/fm;->e:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_0
    :goto_0
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/fm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yingyonghui/market/fm;->f:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f0b00bf

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/fm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yingyonghui/market/fm;->h:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f0b00be

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/fm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yingyonghui/market/fm;->g:Landroid/widget/TextView;

    .line 129
    iget-object v0, p0, Lcom/yingyonghui/market/fm;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yingyonghui/market/fm;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    const v0, 0x102000b

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/fm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yingyonghui/market/fm;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    const v0, 0x1020019

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/fm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yingyonghui/market/fm;->i:Landroid/widget/Button;

    .line 133
    iget-object v0, p0, Lcom/yingyonghui/market/fm;->i:Landroid/widget/Button;

    iget-object v1, p0, Lcom/yingyonghui/market/fm;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/yingyonghui/market/fm;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v0, 0x102001a

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/fm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yingyonghui/market/fm;->j:Landroid/widget/Button;

    .line 137
    iget-object v0, p0, Lcom/yingyonghui/market/fm;->j:Landroid/widget/Button;

    iget-object v1, p0, Lcom/yingyonghui/market/fm;->l:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/yingyonghui/market/fm;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const v0, 0x7f0b00c0

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/fm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/fm;->m:Landroid/view/View;

    .line 141
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/yingyonghui/market/fm;->c:Ljava/lang/CharSequence;

    .line 73
    return-void
.end method
