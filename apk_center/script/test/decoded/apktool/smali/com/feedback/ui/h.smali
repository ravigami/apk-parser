.class public final Lcom/feedback/ui/h;
.super Landroid/widget/BaseAdapter;


# static fields
.field private static synthetic e:[I


# instance fields
.field a:Lcom/feedback/b/b;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/feedback/b/b;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string v0, "FeedbackAdapter"

    iput-object v0, p0, Lcom/feedback/ui/h;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/feedback/ui/h;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/feedback/ui/h;->a:Lcom/feedback/b/b;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/feedback/ui/h;->c:Landroid/view/LayoutInflater;

    return-void
.end method

.method private static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/feedback/ui/h;->e:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/feedback/b/d;->values()[Lcom/feedback/b/d;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/feedback/b/d;->b:Lcom/feedback/b/d;

    invoke-virtual {v1}, Lcom/feedback/b/d;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/feedback/b/d;->c:Lcom/feedback/b/d;

    invoke-virtual {v1}, Lcom/feedback/b/d;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/feedback/b/d;->a:Lcom/feedback/b/d;

    invoke-virtual {v1}, Lcom/feedback/b/d;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/feedback/ui/h;->e:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/feedback/ui/h;->a:Lcom/feedback/b/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/feedback/ui/h;->a:Lcom/feedback/b/b;

    iget-object v0, v0, Lcom/feedback/b/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
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

    const/16 v9, 0x8

    const/4 v8, 0x0

    const v7, -0x777778

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/feedback/ui/h;->c:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/feedback/ui/h;->b:Landroid/content/Context;

    const-string v2, "layout"

    const-string v3, "umeng_analyse_feedback_conversation_item"

    invoke-static {v1, v2, v3}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/feedback/ui/g;

    invoke-direct {v1, p0}, Lcom/feedback/ui/g;-><init>(Lcom/feedback/ui/h;)V

    iget-object v0, p0, Lcom/feedback/ui/h;->b:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "umeng_analyse_atomLinearLayout"

    invoke-static {v0, v2, v3}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/feedback/ui/g;->a:Landroid/widget/LinearLayout;

    iget-object v0, v1, Lcom/feedback/ui/g;->a:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/feedback/ui/h;->b:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "umeng_analyse_bubble"

    invoke-static {v2, v3, v4}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/feedback/ui/g;->b:Landroid/widget/RelativeLayout;

    iget-object v0, v1, Lcom/feedback/ui/g;->a:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/feedback/ui/h;->b:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "umeng_analyse_atomtxt"

    invoke-static {v2, v3, v4}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/feedback/ui/g;->c:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/feedback/ui/g;->a:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/feedback/ui/h;->b:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "umeng_analyse_stateOrTime"

    invoke-static {v2, v3, v4}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/feedback/ui/g;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/feedback/ui/h;->b:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "umeng_analyse_atom_left_margin"

    invoke-static {v0, v2, v3}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/feedback/ui/g;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/feedback/ui/h;->b:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "umeng_analyse_atom_right_margin"

    invoke-static {v0, v2, v3}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/feedback/ui/g;->f:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcom/feedback/ui/h;->a:Lcom/feedback/b/b;

    invoke-virtual {v1, p1}, Lcom/feedback/b/b;->a(I)Lcom/feedback/b/a;

    move-result-object v2

    iget-object v3, v0, Lcom/feedback/ui/g;->d:Landroid/widget/TextView;

    iget-object v1, v2, Lcom/feedback/b/a;->d:Lcom/feedback/b/d;

    invoke-static {}, Lcom/feedback/ui/h;->a()[I

    move-result-object v4

    invoke-virtual {v1}, Lcom/feedback/b/d;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_0

    iget-object v1, v2, Lcom/feedback/b/a;->b:Ljava/util/Date;

    iget-object v4, p0, Lcom/feedback/ui/h;->b:Landroid/content/Context;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_1
    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v1, ""

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v1, v0, Lcom/feedback/ui/g;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/feedback/b/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lcom/feedback/b/a;->c:Lcom/feedback/b/e;

    sget-object v2, Lcom/feedback/b/e;->c:Lcom/feedback/b/e;

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Lcom/feedback/ui/g;->a:Landroid/widget/LinearLayout;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, v0, Lcom/feedback/ui/g;->b:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/feedback/ui/h;->b:Landroid/content/Context;

    const-string v3, "drawable"

    const-string v4, "umeng_analyse_dev_bubble"

    invoke-static {v2, v3, v4}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v1, v0, Lcom/feedback/ui/g;->f:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lcom/feedback/ui/g;->e:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/feedback/ui/g;

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/feedback/ui/h;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/feedback/ui/h;->b:Landroid/content/Context;

    const-string v5, "string"

    const-string v6, "UMFb_Atom_State_Sending"

    invoke-static {v4, v5, v6}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :pswitch_1
    iget-object v1, p0, Lcom/feedback/ui/h;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/feedback/ui/h;->b:Landroid/content/Context;

    const-string v5, "string"

    const-string v6, "UMFb_Atom_State_Resend"

    invoke-static {v4, v5, v6}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, -0x1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-M-d HH:mm"

    invoke-direct {v5, v6, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v5, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :cond_3
    iget-object v1, v0, Lcom/feedback/ui/g;->a:Landroid/widget/LinearLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, v0, Lcom/feedback/ui/g;->b:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/feedback/ui/h;->b:Landroid/content/Context;

    const-string v3, "drawable"

    const-string v4, "umeng_analyse_user_bubble"

    invoke-static {v2, v3, v4}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v1, v0, Lcom/feedback/ui/g;->f:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lcom/feedback/ui/g;->e:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
