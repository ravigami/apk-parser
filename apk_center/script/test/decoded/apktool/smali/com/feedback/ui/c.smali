.class final Lcom/feedback/ui/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/feedback/ui/SendFeedback;


# direct methods
.method synthetic constructor <init>(Lcom/feedback/ui/SendFeedback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/feedback/ui/c;-><init>(Lcom/feedback/ui/SendFeedback;B)V

    return-void
.end method

.method private constructor <init>(Lcom/feedback/ui/SendFeedback;B)V
    .locals 0

    iput-object p1, p0, Lcom/feedback/ui/c;->a:Lcom/feedback/ui/SendFeedback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/feedback/ui/c;->a:Lcom/feedback/ui/SendFeedback;

    invoke-static {v1}, Lcom/feedback/ui/SendFeedback;->a(Lcom/feedback/ui/SendFeedback;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/feedback/ui/c;->a:Lcom/feedback/ui/SendFeedback;

    invoke-static {v0}, Lcom/feedback/ui/SendFeedback;->a(Lcom/feedback/ui/SendFeedback;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/feedback/a/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/feedback/ui/c;->a:Lcom/feedback/ui/SendFeedback;

    iget-object v1, p0, Lcom/feedback/ui/c;->a:Lcom/feedback/ui/SendFeedback;

    iget-object v2, p0, Lcom/feedback/ui/c;->a:Lcom/feedback/ui/SendFeedback;

    const-string v3, "string"

    const-string v4, "UMEmptyFbNotAllowed"

    invoke-static {v2, v3, v4}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/feedback/ui/SendFeedback;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x8c

    if-le v1, v3, :cond_2

    iget-object v0, p0, Lcom/feedback/ui/c;->a:Lcom/feedback/ui/SendFeedback;

    iget-object v1, p0, Lcom/feedback/ui/c;->a:Lcom/feedback/ui/SendFeedback;

    iget-object v2, p0, Lcom/feedback/ui/c;->a:Lcom/feedback/ui/SendFeedback;

    const-string v3, "string"

    const-string v4, "UMContentTooLong"

    invoke-static {v2, v3, v4}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/feedback/ui/SendFeedback;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/feedback/ui/c;->a:Lcom/feedback/ui/SendFeedback;

    invoke-static {v1}, Lcom/feedback/ui/SendFeedback;->b(Lcom/feedback/ui/SendFeedback;)Landroid/widget/Spinner;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/feedback/ui/c;->a:Lcom/feedback/ui/SendFeedback;

    invoke-static {v1}, Lcom/feedback/ui/SendFeedback;->b(Lcom/feedback/ui/SendFeedback;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    :goto_1
    iget-object v3, p0, Lcom/feedback/ui/c;->a:Lcom/feedback/ui/SendFeedback;

    invoke-static {v3}, Lcom/feedback/ui/SendFeedback;->c(Lcom/feedback/ui/SendFeedback;)Landroid/widget/Spinner;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/feedback/ui/c;->a:Lcom/feedback/ui/SendFeedback;

    invoke-static {v2}, Lcom/feedback/ui/SendFeedback;->c(Lcom/feedback/ui/SendFeedback;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    :cond_3
    iget-object v3, p0, Lcom/feedback/ui/c;->a:Lcom/feedback/ui/SendFeedback;

    const-string v4, "UmengFb_Nums"

    invoke-virtual {v3, v4, v5}, Lcom/feedback/ui/SendFeedback;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "ageGroup"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v4, "sex"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :try_start_0
    iget-object v3, p0, Lcom/feedback/ui/c;->a:Lcom/feedback/ui/SendFeedback;

    iget-object v4, p0, Lcom/feedback/ui/c;->a:Lcom/feedback/ui/SendFeedback;

    invoke-static {v4, v0, v1, v2}, Lcom/feedback/a/d;->a(Landroid/content/Context;Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/feedback/ui/SendFeedback;->a(Lcom/feedback/ui/SendFeedback;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/feedback/ui/c;->a:Lcom/feedback/ui/SendFeedback;

    iget-object v1, p0, Lcom/feedback/ui/c;->a:Lcom/feedback/ui/SendFeedback;

    invoke-static {v1}, Lcom/feedback/ui/SendFeedback;->d(Lcom/feedback/ui/SendFeedback;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feedback/a/a;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    new-instance v0, Lcom/feedback/c/a;

    iget-object v1, p0, Lcom/feedback/ui/c;->a:Lcom/feedback/ui/SendFeedback;

    invoke-static {v1}, Lcom/feedback/ui/SendFeedback;->d(Lcom/feedback/ui/SendFeedback;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/feedback/ui/c;->a:Lcom/feedback/ui/SendFeedback;

    invoke-direct {v0, v1, v2}, Lcom/feedback/c/a;-><init>(Lorg/json/JSONObject;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/feedback/c/a;->start()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/feedback/ui/c;->a:Lcom/feedback/ui/SendFeedback;

    const-class v2, Lcom/feedback/ui/FeedbackConversations;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/feedback/ui/c;->a:Lcom/feedback/ui/SendFeedback;

    invoke-virtual {v1, v0}, Lcom/feedback/ui/SendFeedback;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/feedback/ui/c;->a:Lcom/feedback/ui/SendFeedback;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/feedback/ui/SendFeedback;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/feedback/ui/c;->a:Lcom/feedback/ui/SendFeedback;

    invoke-static {v1}, Lcom/feedback/ui/SendFeedback;->a(Lcom/feedback/ui/SendFeedback;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/feedback/ui/c;->a:Lcom/feedback/ui/SendFeedback;

    invoke-virtual {v0}, Lcom/feedback/ui/SendFeedback;->finish()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/feedback/ui/c;->a:Lcom/feedback/ui/SendFeedback;

    iget-object v1, p0, Lcom/feedback/ui/c;->a:Lcom/feedback/ui/SendFeedback;

    invoke-static {v1}, Lcom/feedback/ui/SendFeedback;->d(Lcom/feedback/ui/SendFeedback;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feedback/a/a;->c(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    :cond_4
    move v1, v2

    goto/16 :goto_1
.end method
