.class public Lcom/feedback/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:Lcom/feedback/b/c;

.field public b:Ljava/lang/String;

.field public c:Lcom/feedback/b/a;

.field public d:Lcom/feedback/b/a;

.field public e:Ljava/util/List;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/feedback/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/feedback/b/b;->f:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/feedback/b/b;->e:Ljava/util/List;

    sget-object v0, Lcom/feedback/b/c;->c:Lcom/feedback/b/c;

    iput-object v0, p0, Lcom/feedback/b/b;->a:Lcom/feedback/b/c;

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/feedback/b/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/feedback/b/b;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/feedback/b/a;

    iput-object v0, p0, Lcom/feedback/b/b;->c:Lcom/feedback/b/a;

    iget-object v0, p0, Lcom/feedback/b/b;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/feedback/b/b;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/feedback/b/a;

    iput-object v0, p0, Lcom/feedback/b/b;->d:Lcom/feedback/b/a;

    iget-object v0, p0, Lcom/feedback/b/b;->c:Lcom/feedback/b/a;

    iget-object v0, v0, Lcom/feedback/b/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/feedback/b/b;->b:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    :try_start_0
    new-instance v2, Lcom/feedback/b/a;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/feedback/b/a;-><init>(Lorg/json/JSONObject;)V

    iget-object v3, p0, Lcom/feedback/b/b;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/feedback/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/feedback/b/b;->f:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/feedback/b/b;->e:Ljava/util/List;

    const-string v0, "state"

    invoke-static {p1, v0}, Lcom/feedback/a/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sending"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/feedback/b/c;->a:Lcom/feedback/b/c;

    iput-object v0, p0, Lcom/feedback/b/b;->a:Lcom/feedback/b/c;

    :goto_0
    new-instance v0, Lcom/feedback/b/a;

    invoke-direct {v0, p1}, Lcom/feedback/b/a;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/feedback/b/b;->c:Lcom/feedback/b/a;

    iget-object v0, p0, Lcom/feedback/b/b;->c:Lcom/feedback/b/a;

    iput-object v0, p0, Lcom/feedback/b/b;->d:Lcom/feedback/b/a;

    iget-object v0, p0, Lcom/feedback/b/b;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/feedback/b/b;->c:Lcom/feedback/b/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "sequence_num"

    invoke-static {p1, v0}, Lcom/feedback/a/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/feedback/b/b;->b:Ljava/lang/String;

    return-void

    :cond_0
    const-string v1, "fail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/feedback/b/c;->b:Lcom/feedback/b/c;

    iput-object v0, p0, Lcom/feedback/b/b;->a:Lcom/feedback/b/c;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/feedback/b/b;->f:Ljava/lang/String;

    const-string v1, "Code should not get here"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Lcom/feedback/b/a;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/feedback/b/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/feedback/b/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/feedback/b/a;

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lcom/feedback/b/b;

    iget-object v0, p0, Lcom/feedback/b/b;->d:Lcom/feedback/b/a;

    iget-object v0, v0, Lcom/feedback/b/a;->b:Ljava/util/Date;

    iget-object v1, p1, Lcom/feedback/b/b;->d:Lcom/feedback/b/a;

    iget-object v1, v1, Lcom/feedback/b/a;->b:Ljava/util/Date;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
