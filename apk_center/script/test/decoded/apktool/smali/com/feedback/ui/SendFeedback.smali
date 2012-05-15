.class public Lcom/feedback/ui/SendFeedback;
.super Landroid/app/Activity;


# static fields
.field private static h:Z


# instance fields
.field private a:Landroid/widget/Spinner;

.field private b:Landroid/widget/Spinner;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageButton;

.field private g:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/feedback/ui/SendFeedback;->h:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/feedback/ui/SendFeedback;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/feedback/ui/SendFeedback;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/feedback/ui/SendFeedback;->g:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic b(Lcom/feedback/ui/SendFeedback;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->a:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic c(Lcom/feedback/ui/SendFeedback;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->b:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic d(Lcom/feedback/ui/SendFeedback;)Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->g:Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const v7, 0x1090009

    const v6, 0x1090008

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/feedback/ui/SendFeedback;->requestWindowFeature(I)Z

    const-string v0, "layout"

    const-string v1, "umeng_analyse_send_feedback"

    invoke-static {p0, v0, v1}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/feedback/ui/SendFeedback;->setContentView(I)V

    const-string v0, "id"

    const-string v1, "umeng_analyse_feedback_age_spinner"

    invoke-static {p0, v0, v1}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/feedback/ui/SendFeedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/feedback/ui/SendFeedback;->a:Landroid/widget/Spinner;

    const-string v0, "id"

    const-string v1, "umeng_analyse_feedback_gender_spinner"

    invoke-static {p0, v0, v1}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/feedback/ui/SendFeedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/feedback/ui/SendFeedback;->b:Landroid/widget/Spinner;

    const-string v0, "id"

    const-string v1, "umeng_analyse_feedback_submit"

    invoke-static {p0, v0, v1}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/feedback/ui/SendFeedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/feedback/ui/SendFeedback;->d:Landroid/widget/TextView;

    const-string v0, "id"

    const-string v1, "umeng_analyse_feedback_content"

    invoke-static {p0, v0, v1}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/feedback/ui/SendFeedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/feedback/ui/SendFeedback;->c:Landroid/widget/EditText;

    const-string v0, "id"

    const-string v1, "umeng_analyse_feedback_umeng_title"

    invoke-static {p0, v0, v1}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/feedback/ui/SendFeedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/feedback/ui/SendFeedback;->e:Landroid/widget/TextView;

    const-string v0, "id"

    const-string v1, "umeng_analyse_feedback_see_list_btn"

    invoke-static {p0, v0, v1}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/feedback/ui/SendFeedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/feedback/ui/SendFeedback;->f:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->a:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/feedback/ui/SendFeedback;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "array"

    const-string v3, "UMageList"

    invoke-static {p0, v2, v3}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Lcom/feedback/ui/SendFeedback;->a:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_0
    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->b:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/feedback/ui/SendFeedback;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "array"

    const-string v3, "UMgenderList"

    invoke-static {p0, v2, v3}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Lcom/feedback/ui/SendFeedback;->b:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_1
    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->f:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->f:Landroid/widget/ImageButton;

    new-instance v1, Lcom/feedback/ui/d;

    invoke-direct {v1, p0}, Lcom/feedback/ui/d;-><init>(Lcom/feedback/ui/SendFeedback;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->e:Landroid/widget/TextView;

    const-string v1, "string"

    const-string v2, "UMFeedbackUmengTitle"

    invoke-static {p0, v1, v2}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/feedback/ui/SendFeedback;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->c:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->c:Landroid/widget/EditText;

    const-string v1, "string"

    const-string v2, "UMFeedbackContent"

    invoke-static {p0, v1, v2}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/feedback/ui/SendFeedback;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->d:Landroid/widget/TextView;

    const-string v1, "string"

    const-string v2, "UMFeedbackSummit"

    invoke-static {p0, v1, v2}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/feedback/ui/SendFeedback;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-virtual {p0}, Lcom/feedback/ui/SendFeedback;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sequence_num"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/feedback/ui/SendFeedback;->c:Landroid/widget/EditText;

    if-eqz v1, :cond_6

    const-string v1, "fail"

    invoke-virtual {p0, v1, v5}, Lcom/feedback/ui/SendFeedback;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/feedback/a/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/feedback/b/a;

    invoke-direct {v1, v2}, Lcom/feedback/b/a;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/feedback/b/a;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/feedback/ui/SendFeedback;->c:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "fail"

    invoke-static {p0, v1, v0}, Lcom/feedback/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->a:Landroid/widget/Spinner;

    if-eqz v0, :cond_7

    const-string v0, "UmengFb_Nums"

    invoke-virtual {p0, v0, v5}, Lcom/feedback/ui/SendFeedback;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ageGroup"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_7

    iget-object v1, p0, Lcom/feedback/ui/SendFeedback;->a:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_7
    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->b:Landroid/widget/Spinner;

    if-eqz v0, :cond_8

    const-string v0, "UmengFb_Nums"

    invoke-virtual {p0, v0, v5}, Lcom/feedback/ui/SendFeedback;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sex"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_8

    iget-object v1, p0, Lcom/feedback/ui/SendFeedback;->b:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_8
    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/feedback/ui/c;

    invoke-direct {v1, p0}, Lcom/feedback/ui/c;-><init>(Lcom/feedback/ui/SendFeedback;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->c:Landroid/widget/EditText;

    if-eqz v0, :cond_9

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/feedback/ui/SendFeedback;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :cond_9
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
