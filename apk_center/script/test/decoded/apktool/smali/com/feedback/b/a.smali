.class public final Lcom/feedback/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/Date;

.field public c:Lcom/feedback/b/e;

.field public d:Lcom/feedback/b/d;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "invalid atom"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "new_feedback"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/feedback/b/e;->a:Lcom/feedback/b/e;

    iput-object v0, p0, Lcom/feedback/b/a;->c:Lcom/feedback/b/e;

    :cond_1
    :goto_0
    const-string v0, "state"

    invoke-static {p1, v0}, Lcom/feedback/a/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sending"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lcom/feedback/b/d;->a:Lcom/feedback/b/d;

    iput-object v0, p0, Lcom/feedback/b/a;->d:Lcom/feedback/b/d;

    :goto_1
    iget-object v0, p0, Lcom/feedback/b/a;->c:Lcom/feedback/b/e;

    sget-object v1, Lcom/feedback/b/e;->a:Lcom/feedback/b/e;

    if-ne v0, v1, :cond_2

    const-string v0, "thread"

    invoke-static {p1, v0}, Lcom/feedback/a/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/feedback/b/a;->e:Ljava/lang/String;

    :cond_2
    const-string v0, "content"

    invoke-static {p1, v0}, Lcom/feedback/a/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/feedback/b/a;->f:Ljava/lang/String;

    const-string v0, "feedback_id"

    invoke-static {p1, v0}, Lcom/feedback/a/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/feedback/b/a;->a:Ljava/lang/String;

    const-string v0, "sequence_num"

    invoke-static {p1, v0}, Lcom/feedback/a/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/feedback/b/a;->g:Ljava/lang/String;

    const-string v0, "datetime"

    invoke-static {p1, v0}, Lcom/feedback/a/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/m;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/feedback/b/a;->b:Ljava/util/Date;

    return-void

    :cond_3
    const-string v1, "dev_reply"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lcom/feedback/b/e;->c:Lcom/feedback/b/e;

    iput-object v0, p0, Lcom/feedback/b/a;->c:Lcom/feedback/b/e;

    goto :goto_0

    :cond_4
    const-string v1, "user_reply"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/feedback/b/e;->b:Lcom/feedback/b/e;

    iput-object v0, p0, Lcom/feedback/b/a;->c:Lcom/feedback/b/e;

    goto :goto_0

    :cond_5
    const-string v1, "fail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v0, Lcom/feedback/b/d;->b:Lcom/feedback/b/d;

    iput-object v0, p0, Lcom/feedback/b/a;->d:Lcom/feedback/b/d;

    goto :goto_1

    :cond_6
    const-string v1, "ok"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    sget-object v0, Lcom/feedback/b/d;->c:Lcom/feedback/b/d;

    iput-object v0, p0, Lcom/feedback/b/a;->d:Lcom/feedback/b/d;

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/feedback/b/a;->c:Lcom/feedback/b/e;

    sget-object v1, Lcom/feedback/b/e;->a:Lcom/feedback/b/e;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/feedback/b/a;->e:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/feedback/b/a;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/feedback/b/a;

    iget-object v0, p1, Lcom/feedback/b/a;->b:Ljava/util/Date;

    iget-object v1, p0, Lcom/feedback/b/a;->b:Ljava/util/Date;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/feedback/b/a;->b:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/feedback/b/a;->b:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
