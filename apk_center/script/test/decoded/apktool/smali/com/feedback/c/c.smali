.class public final Lcom/feedback/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lorg/json/JSONObject;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MsgWorker"

    sput-object v0, Lcom/feedback/c/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/feedback/c/c;->b:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/feedback/c/c;->c:Landroid/content/Context;

    return-void
.end method

.method private a()Ljava/lang/Boolean;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/feedback/c/c;->b:Lorg/json/JSONObject;

    const-string v2, "feedback_id"

    invoke-static {v0, v2}, Lcom/feedback/a/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "postFeedbackFinished"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "type"

    const-string v4, "user_reply"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "feedback_id"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    :try_start_0
    iget-object v0, p0, Lcom/feedback/c/c;->b:Lorg/json/JSONObject;

    const-string v3, "http://feedback.whalecloud.com/feedback/reply"

    const-string v4, "reply"

    invoke-static {v0, v3, v4}, Lcom/feedback/a/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v0}, Lcom/feedback/a/d;->a(Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/feedback/c/c;->b:Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/feedback/a/d;->e(Lorg/json/JSONObject;)Z

    :try_start_1
    iget-object v3, p0, Lcom/feedback/c/c;->b:Lorg/json/JSONObject;

    const-string v4, "reply_id"

    const-string v5, "reply_id"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/feedback/a/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const-string v0, "PostFeedbackBroadcast"

    const-string v3, "succeed"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    iget-object v0, p0, Lcom/feedback/c/c;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/feedback/c/c;->b:Lorg/json/JSONObject;

    invoke-static {v0, v3}, Lcom/feedback/a/a;->a(Landroid/content/Context;Lorg/json/JSONObject;)Z

    iget-object v0, p0, Lcom/feedback/c/c;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/feedback/c/c;->b:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/feedback/a/d;->c(Lorg/json/JSONObject;)Z

    const-string v0, "PostFeedbackBroadcast"

    const-string v3, "fail"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/feedback/c/c;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
