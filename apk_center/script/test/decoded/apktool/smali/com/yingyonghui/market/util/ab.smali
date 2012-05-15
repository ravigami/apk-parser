.class public Lcom/yingyonghui/market/util/ab;
.super Ljava/lang/Object;
.source "IconCache.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/HashMap;

.field private static final c:Ljava/util/LinkedList;

.field private static d:Landroid/graphics/drawable/Drawable;

.field private static e:Landroid/graphics/drawable/Drawable;

.field private static f:I

.field private static g:Lcom/yingyonghui/market/util/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/yingyonghui/market/util/ab;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yingyonghui/market/util/ab;->a:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yingyonghui/market/util/ab;->b:Ljava/util/HashMap;

    .line 22
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/yingyonghui/market/util/ab;->c:Ljava/util/LinkedList;

    .line 26
    const/16 v0, 0x64

    sput v0, Lcom/yingyonghui/market/util/ab;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter

    .prologue
    .line 42
    const-class v1, Lcom/yingyonghui/market/util/ab;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lcom/yingyonghui/market/util/ab;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020045

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/yingyonghui/market/util/ab;->d:Landroid/graphics/drawable/Drawable;

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    sget-object v0, Lcom/yingyonghui/market/util/ab;->d:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(I)Lcom/yingyonghui/market/model/m;
    .locals 2
    .parameter

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_icon_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yingyonghui/market/util/ab;->a(Ljava/lang/String;)Lcom/yingyonghui/market/model/m;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/yingyonghui/market/model/m;
    .locals 4
    .parameter

    .prologue
    .line 75
    sget-object v1, Lcom/yingyonghui/market/util/ab;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 76
    :try_start_0
    sget-object v0, Lcom/yingyonghui/market/util/ab;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/m;

    .line 77
    if-eqz v0, :cond_2

    .line 78
    iget-object v2, v0, Lcom/yingyonghui/market/model/m;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 79
    sget-object v2, Lcom/yingyonghui/market/util/ab;->c:Ljava/util/LinkedList;

    invoke-virtual {v2, p0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 80
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 81
    sget-object v2, Lcom/yingyonghui/market/util/ab;->c:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 92
    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    .line 82
    :cond_1
    if-lez v2, :cond_0

    .line 83
    sget-object v3, Lcom/yingyonghui/market/util/ab;->c:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 84
    sget-object v2, Lcom/yingyonghui/market/util/ab;->c:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 88
    :cond_2
    :try_start_1
    new-instance v0, Lcom/yingyonghui/market/model/m;

    invoke-direct {v0}, Lcom/yingyonghui/market/model/m;-><init>()V

    .line 89
    sget-object v2, Lcom/yingyonghui/market/util/ab;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static a()Lcom/yingyonghui/market/util/ab;
    .locals 2

    .prologue
    .line 31
    const-class v1, Lcom/yingyonghui/market/util/ab;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lcom/yingyonghui/market/util/ab;->g:Lcom/yingyonghui/market/util/ab;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/yingyonghui/market/util/ab;

    invoke-direct {v0}, Lcom/yingyonghui/market/util/ab;-><init>()V

    sput-object v0, Lcom/yingyonghui/market/util/ab;->g:Lcom/yingyonghui/market/util/ab;

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    sget-object v0, Lcom/yingyonghui/market/util/ab;->g:Lcom/yingyonghui/market/util/ab;

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_icon_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yingyonghui/market/util/ab;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 67
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 102
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    sget-object v1, Lcom/yingyonghui/market/util/ab;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 107
    :try_start_0
    sget-object v0, Lcom/yingyonghui/market/util/ab;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/m;

    .line 108
    if-nez v0, :cond_2

    .line 109
    new-instance v0, Lcom/yingyonghui/market/model/m;

    invoke-direct {v0}, Lcom/yingyonghui/market/model/m;-><init>()V

    .line 111
    :cond_2
    iget-object v2, v0, Lcom/yingyonghui/market/model/m;->a:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    .line 112
    iput-object p1, v0, Lcom/yingyonghui/market/model/m;->a:Landroid/graphics/drawable/Drawable;

    .line 113
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/yingyonghui/market/model/m;->b:Z

    .line 115
    sget-object v2, Lcom/yingyonghui/market/util/ab;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/yingyonghui/market/util/ab;->c:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 117
    sget-object v0, Lcom/yingyonghui/market/util/ab;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/16 v2, 0x50

    if-le v0, v2, :cond_3

    .line 119
    :goto_1
    :try_start_1
    sget-object v0, Lcom/yingyonghui/market/util/ab;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v2, 0x32

    if-le v0, v2, :cond_3

    .line 120
    sget-object v0, Lcom/yingyonghui/market/util/ab;->c:Ljava/util/LinkedList;

    sget-object v2, Lcom/yingyonghui/market/util/ab;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    sget-object v2, Lcom/yingyonghui/market/util/ab;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v2, Lcom/yingyonghui/market/util/ab;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/yingyonghui/market/util/ab;->c:Ljava/util/LinkedList;

    sget-object v2, Lcom/yingyonghui/market/util/ab;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 127
    :catch_0
    move-exception v0

    .line 138
    :cond_3
    :goto_2
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 130
    :cond_4
    :try_start_3
    sget-object v0, Lcom/yingyonghui/market/util/ab;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 131
    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    .line 132
    sget-object v0, Lcom/yingyonghui/market/util/ab;->c:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 133
    :cond_5
    if-lez v0, :cond_3

    .line 134
    sget-object v2, Lcom/yingyonghui/market/util/ab;->c:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/yingyonghui/market/util/ab;->c:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public static b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter

    .prologue
    .line 52
    const-class v1, Lcom/yingyonghui/market/util/ab;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/yingyonghui/market/util/ab;->e:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02002d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/yingyonghui/market/util/ab;->e:Landroid/graphics/drawable/Drawable;

    .line 56
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    sget-object v0, Lcom/yingyonghui/market/util/ab;->e:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/yingyonghui/market/util/ab;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 143
    sget-object v0, Lcom/yingyonghui/market/util/ab;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 144
    return-void
.end method
