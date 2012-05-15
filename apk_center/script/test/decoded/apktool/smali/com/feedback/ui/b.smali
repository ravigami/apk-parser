.class public final Lcom/feedback/ui/b;
.super Landroid/widget/BaseAdapter;


# static fields
.field private static f:I


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, -0x9

    sput v0, Lcom/feedback/ui/b;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/feedback/ui/b;->d:Ljava/lang/String;

    const-string v0, "FeedbackListAdapter"

    iput-object v0, p0, Lcom/feedback/ui/b;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/feedback/ui/b;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/feedback/ui/b;->a:Landroid/view/LayoutInflater;

    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iput-object p2, p0, Lcom/feedback/ui/b;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/feedback/b/b;
    .locals 1

    iget-object v0, p0, Lcom/feedback/ui/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/feedback/b/b;

    return-object v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iput-object p1, p0, Lcom/feedback/ui/b;->c:Ljava/util/List;

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/feedback/ui/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v2, 0x0

    const/4 v9, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/feedback/ui/b;->a:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/feedback/ui/b;->b:Landroid/content/Context;

    const-string v3, "layout"

    const-string v4, "umeng_analyse_feedback_conversations_item"

    invoke-static {v1, v3, v4}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/feedback/ui/a;

    invoke-direct {v1, p0}, Lcom/feedback/ui/a;-><init>(Lcom/feedback/ui/b;)V

    iget-object v0, p0, Lcom/feedback/ui/b;->b:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "umeng_analyse_new_reply_notifier"

    invoke-static {v0, v3, v4}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/feedback/ui/a;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/feedback/ui/b;->b:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "umeng_analyse_feedbackpreview"

    invoke-static {v0, v3, v4}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/feedback/ui/a;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/feedback/ui/b;->b:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "umeng_analyse_dev_reply"

    invoke-static {v0, v3, v4}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/feedback/ui/a;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/feedback/ui/b;->b:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "umeng_analyse_state_or_date"

    invoke-static {v0, v3, v4}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/feedback/ui/a;->d:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/feedback/ui/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/feedback/b/b;

    iget-object v3, v0, Lcom/feedback/b/b;->c:Lcom/feedback/b/a;

    invoke-virtual {v3}, Lcom/feedback/b/a;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v3, v0, Lcom/feedback/b/b;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    iget-object v3, v0, Lcom/feedback/b/b;->d:Lcom/feedback/b/a;

    iget-object v3, v3, Lcom/feedback/b/a;->c:Lcom/feedback/b/e;

    sget-object v4, Lcom/feedback/b/e;->c:Lcom/feedback/b/e;

    if-ne v3, v4, :cond_1

    iget-object v2, v0, Lcom/feedback/b/b;->d:Lcom/feedback/b/a;

    invoke-virtual {v2}, Lcom/feedback/b/a;->a()Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-object v3, v0, Lcom/feedback/b/b;->a:Lcom/feedback/b/c;

    sget-object v4, Lcom/feedback/b/c;->c:Lcom/feedback/b/c;

    if-ne v3, v4, :cond_7

    iget-object v3, v0, Lcom/feedback/b/b;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-gez v3, :cond_4

    :cond_2
    const-string v3, ""

    :goto_2
    iget-object v4, v0, Lcom/feedback/b/b;->d:Lcom/feedback/b/a;

    iget-object v6, v4, Lcom/feedback/b/a;->b:Ljava/util/Date;

    iget-object v4, p0, Lcom/feedback/ui/b;->b:Landroid/content/Context;

    if-nez v6, :cond_9

    const-string v4, ""

    :goto_3
    iget-object v6, v1, Lcom/feedback/ui/a;->b:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v2, :cond_b

    iget-object v2, v1, Lcom/feedback/ui/a;->c:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    invoke-static {v3}, Lcom/feedback/a/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v1, Lcom/feedback/ui/a;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object v2, p0, Lcom/feedback/ui/b;->b:Landroid/content/Context;

    const-string v3, "UmengFb_Nums"

    invoke-virtual {v2, v3, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "newReplyIds"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/feedback/b/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/feedback/ui/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lcom/feedback/ui/a;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/feedback/ui/b;->b:Landroid/content/Context;

    const-string v2, "drawable"

    const-string v3, "umeng_analyse_point_new"

    invoke-static {v1, v2, v3}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_6
    return-object p2

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/feedback/ui/a;

    move-object v1, v0

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0, v3}, Lcom/feedback/b/b;->a(I)Lcom/feedback/b/a;

    move-result-object v4

    iget-object v4, v4, Lcom/feedback/b/a;->d:Lcom/feedback/b/d;

    sget-object v6, Lcom/feedback/b/d;->a:Lcom/feedback/b/d;

    if-ne v4, v6, :cond_5

    iget-object v3, p0, Lcom/feedback/ui/b;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/feedback/ui/b;->b:Landroid/content/Context;

    const-string v6, "string"

    const-string v7, "UMFbList_ListItem_State_Sending"

    invoke-static {v4, v6, v7}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_5
    sget-object v6, Lcom/feedback/b/d;->b:Lcom/feedback/b/d;

    if-ne v4, v6, :cond_6

    iget-object v3, p0, Lcom/feedback/ui/b;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/feedback/ui/b;->b:Landroid/content/Context;

    const-string v6, "string"

    const-string v7, "UMFbList_ListItem_State_Fail"

    invoke-static {v4, v6, v7}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    :cond_7
    iget-object v3, v0, Lcom/feedback/b/b;->a:Lcom/feedback/b/c;

    sget-object v4, Lcom/feedback/b/c;->b:Lcom/feedback/b/c;

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lcom/feedback/ui/b;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/feedback/ui/b;->b:Landroid/content/Context;

    const-string v6, "string"

    const-string v7, "UMFbList_ListItem_State_ReSend"

    invoke-static {v4, v6, v7}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_8
    iget-object v3, v0, Lcom/feedback/b/b;->a:Lcom/feedback/b/c;

    sget-object v4, Lcom/feedback/b/c;->a:Lcom/feedback/b/c;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/feedback/ui/b;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/feedback/ui/b;->b:Landroid/content/Context;

    const-string v6, "string"

    const-string v7, "UMFbList_ListItem_State_Sending"

    invoke-static {v4, v6, v7}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v7, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v4, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v8, "M\u6708d\u65e5"

    invoke-direct {v4, v8, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    :goto_7
    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    :cond_a
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v8, "dd MMMM"

    invoke-direct {v4, v8, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_7

    :cond_b
    iget-object v5, v1, Lcom/feedback/ui/a;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, v1, Lcom/feedback/ui/a;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_c
    iget-object v2, v1, Lcom/feedback/ui/a;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_d
    iget-object v0, v1, Lcom/feedback/ui/a;->a:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6
.end method
