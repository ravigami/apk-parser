.class public final Lcom/feedback/c/a;
.super Ljava/lang/Thread;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lorg/json/JSONObject;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "PostFeedbackThread"

    sput-object v0, Lcom/feedback/c/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-static {p1}, Lcom/feedback/a/d;->b(Lorg/json/JSONObject;)Z

    iput-object p1, p0, Lcom/feedback/c/a;->b:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/feedback/c/a;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v1, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "postFeedbackFinished"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    :try_start_0
    const-string v0, "new_feedback"

    iget-object v3, p0, Lcom/feedback/c/a;->b:Lorg/json/JSONObject;

    const-string v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/feedback/c/a;->b:Lorg/json/JSONObject;

    const-string v3, "http://feedback.whalecloud.com/feedback/feedbacks"

    const-string v4, "feedback"

    invoke-static {v0, v3, v4}, Lcom/feedback/a/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "type"

    const-string v4, "feedback"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/feedback/c/a;->b:Lorg/json/JSONObject;

    const-string v3, "sequence_num"

    invoke-static {v1, v3}, Lcom/feedback/a/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/feedback/c/a;->c:Landroid/content/Context;

    const-string v4, "temp"

    invoke-static {v3, v4, v1}, Lcom/feedback/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/feedback/a/d;->a(Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "feedback_id"

    invoke-static {v0, v1}, Lcom/feedback/a/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/feedback/c/a;->b:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/feedback/a/d;->e(Lorg/json/JSONObject;)Z

    iget-object v1, p0, Lcom/feedback/c/a;->b:Lorg/json/JSONObject;

    const-string v3, "feedback_id"

    invoke-static {v1, v3, v0}, Lcom/feedback/a/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/feedback/c/a;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/feedback/c/a;->b:Lorg/json/JSONObject;

    invoke-static {v1, v3}, Lcom/feedback/a/a;->a(Landroid/content/Context;Lorg/json/JSONObject;)Z

    const-string v1, "PostFeedbackBroadcast"

    const-string v3, "succeed"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "feedback_id"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    iget-object v0, p0, Lcom/feedback/c/a;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/feedback/c/a;->b:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/feedback/a/d;->c(Lorg/json/JSONObject;)Z

    iget-object v0, p0, Lcom/feedback/c/a;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/feedback/c/a;->b:Lorg/json/JSONObject;

    invoke-static {v0, v3}, Lcom/feedback/a/a;->c(Landroid/content/Context;Lorg/json/JSONObject;)V

    const-string v0, "sequence_num"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "PostFeedbackBroadcast"

    const-string v1, "fail"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method
