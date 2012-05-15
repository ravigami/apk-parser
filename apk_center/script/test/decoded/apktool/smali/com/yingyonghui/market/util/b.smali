.class public final Lcom/yingyonghui/market/util/b;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:Ljava/util/regex/Pattern;

.field private static h:Ljava/util/Map;

.field private static final i:[Ljava/lang/String;

.field private static final j:Ljava/util/Set;

.field private static k:[C

.field private static synthetic l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0xfc

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    const-class v0, Lcom/yingyonghui/market/util/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/yingyonghui/market/util/b;->l:Z

    .line 47
    const-string v0, "</?[a-zA-Z][^>]*>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/yingyonghui/market/util/b;->a:Ljava/util/regex/Pattern;

    .line 50
    const-string v0, "&#?[a-zA-Z0-9]{1,8};"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/yingyonghui/market/util/b;->b:Ljava/util/regex/Pattern;

    .line 53
    const-string v0, "(.*)\\{(\\d+),(\\d+)\\}(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/yingyonghui/market/util/b;->c:Ljava/util/regex/Pattern;

    .line 56
    const-string v0, "^[\\w]+[\\w\\.\\-\\+\\_]+@[\\w\\.\\-\\_]+\\.[\\w]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/yingyonghui/market/util/b;->d:Ljava/util/regex/Pattern;

    .line 58
    const-string v0, "^[1-9][0-9]{4,10}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/yingyonghui/market/util/b;->e:Ljava/util/regex/Pattern;

    .line 60
    const-string v0, "^\\d{3}\\-\\d{8}|\\d{4}\\-\\d{7}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/yingyonghui/market/util/b;->f:Ljava/util/regex/Pattern;

    .line 62
    const-string v0, "^1[358]\\d{9}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/yingyonghui/market/util/b;->g:Ljava/util/regex/Pattern;

    .line 882
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 884
    sput-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&nbsp;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xa0

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&iexcl;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xa1

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&cent;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xa2

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&pound;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xa3

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&curren;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xa4

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&yen;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xa5

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&brvbar;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xa6

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&sect;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xa7

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&uml;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xa8

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&copy;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xa9

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&ordf;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xaa

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&laquo;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xab

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&not;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xac

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&shy;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xad

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&reg;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xae

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&macr;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xaf

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&deg;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xb0

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&plusmn;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xb1

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&sup2;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xb2

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&sup3;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xb3

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&acute;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xb4

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&micro;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xb5

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&para;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xb6

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&middot;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xb7

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&cedil;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xb8

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&sup1;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xb9

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&ordm;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xba

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&raquo;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xbb

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&frac14;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xbc

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&frac12;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xbd

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&frac34;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xbe

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&iquest;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xbf

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Agrave;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xc0

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Aacute;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xc1

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Acirc;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xc2

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Atilde;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xc3

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Auml;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xc4

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Aring;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xc5

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&AElig;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xc6

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Ccedil;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xc7

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Egrave;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xc8

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Eacute;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xc9

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Ecirc;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xca

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Euml;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xcb

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Igrave;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xcc

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Iacute;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xcd

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Icirc;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xce

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Iuml;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xcf

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&ETH;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xd0

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Ntilde;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xd1

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Ograve;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xd2

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Oacute;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xd3

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Ocirc;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xd4

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Otilde;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xd5

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Ouml;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xd6

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&times;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xd7

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Oslash;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xd8

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Ugrave;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xd9

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Uacute;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xda

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Ucirc;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xdb

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Uuml;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xdc

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Yacute;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xdd

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&THORN;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xde

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&szlig;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xdf

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&agrave;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xe0

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&aacute;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xe1

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&acirc;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xe2

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&atilde;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xe3

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&auml;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xe4

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&aring;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xe5

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&aelig;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xe6

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&ccedil;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xe7

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&egrave;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xe8

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&eacute;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xe9

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&ecirc;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xea

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&euml;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xeb

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&igrave;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xec

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&iacute;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xed

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&icirc;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xee

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&iuml;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xef

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&eth;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xf0

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&ntilde;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xf1

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&ograve;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xf2

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&oacute;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xf3

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&ocirc;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xf4

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&otilde;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xf5

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&ouml;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xf6

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&divide;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xf7

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&oslash;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xf8

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&ugrave;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xf9

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&uacute;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xfa

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&ucirc;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xfb

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&uuml;"

    new-instance v4, Ljava/lang/Character;

    invoke-direct {v4, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&yacute;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xfd

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&thorn;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xfe

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&yuml;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xff

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&fnof;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x192

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Alpha;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x391

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Beta;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x392

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Gamma;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x393

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Delta;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x394

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Epsilon;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x395

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Zeta;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x396

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Eta;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x397

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Theta;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x398

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Iota;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x399

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Kappa;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x39a

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Lambda;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x39b

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Mu;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x39c

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Nu;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x39d

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Xi;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x39e

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Omicron;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x39f

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Pi;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3a0

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Rho;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3a1

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Sigma;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3a3

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Tau;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3a4

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Upsilon;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3a5

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Phi;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3a6

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Chi;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3a7

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Psi;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3a8

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Omega;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3a9

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&alpha;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3b1

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&beta;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3b2

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&gamma;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3b3

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&delta;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3b4

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&epsilon;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3b5

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&zeta;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3b6

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&eta;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3b7

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&theta;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3b8

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&iota;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3b9

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&kappa;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3ba

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&lambda;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3bb

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&mu;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3bc

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&nu;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3bd

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&xi;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3be

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&omicron;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3bf

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&pi;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3c0

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&rho;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3c1

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&sigmaf;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3c2

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&sigma;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3c3

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&tau;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3c4

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&upsilon;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3c5

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&phi;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3c6

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&chi;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3c7

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&psi;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3c8

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&omega;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3c9

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&thetasym;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3d1

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&upsih;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3d2

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&piv;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3d6

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&bull;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2022

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&hellip;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2026

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&prime;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2032

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Prime;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2033

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&oline;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x203e

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&frasl;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2044

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&weierp;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2118

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&image;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2111

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&real;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x211c

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&trade;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2122

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&alefsym;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2135

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&larr;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2190

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&uarr;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2191

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&rarr;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2192

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&darr;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2193

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&harr;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2194

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&crarr;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x21b5

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&lArr;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x21d0

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&uArr;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x21d1

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&rArr;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x21d2

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&dArr;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x21d3

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&hArr;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x21d4

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&forall;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2200

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&part;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2202

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&exist;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2203

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&empty;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2205

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&nabla;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2207

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&isin;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2208

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&notin;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2209

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&ni;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x220b

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&prod;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x220f

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&sum;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2211

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&minus;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2212

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&lowast;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2217

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&radic;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x221a

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&prop;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x221d

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&infin;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x221e

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&ang;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2220

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&and;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2227

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&or;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2228

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&cap;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2229

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&cup;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x222a

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&int;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x222b

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&there4;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2234

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&sim;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x223c

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&cong;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2245

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&asymp;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2248

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&ne;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2260

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&equiv;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2261

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&le;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2264

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&ge;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2265

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&sub;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2282

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&sup;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2283

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&nsub;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2284

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&sube;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2286

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&supe;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2287

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&oplus;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2295

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&otimes;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2297

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&perp;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x22a5

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&sdot;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x22c5

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&lceil;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2308

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&rceil;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2309

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&lfloor;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x230a

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&rfloor;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x230b

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&lang;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2329

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&rang;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x232a

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&loz;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x25ca

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&spades;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2660

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&clubs;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2663

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&hearts;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2665

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&diams;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2666

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&quot;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x22

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&amp;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x26

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&lt;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3c

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&gt;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3e

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&OElig;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x152

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&oelig;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x153

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Scaron;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x160

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&scaron;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x161

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Yuml;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x178

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&circ;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2c6

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&tilde;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2dc

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&ensp;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2002

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&emsp;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2003

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&thinsp;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2009

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&zwnj;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x200c

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&zwj;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x200d

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&lrm;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x200e

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&rlm;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x200f

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&ndash;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2013

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&mdash;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2014

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&lsquo;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2018

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&rsquo;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2019

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&sbquo;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x201a

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&ldquo;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x201c

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&rdquo;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x201d

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&bdquo;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x201e

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&dagger;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2020

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&Dagger;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2021

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&permil;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2030

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&lsaquo;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2039

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&rsaquo;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x203a

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    sget-object v0, Lcom/yingyonghui/market/util/b;->h:Ljava/util/Map;

    const-string v3, "&euro;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x20ac

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "script"

    aput-object v3, v0, v2

    const-string v2, "style"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "object"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "applet"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "!--"

    aput-object v2, v0, v1

    sput-object v0, Lcom/yingyonghui/market/util/b;->i:[Ljava/lang/String;

    .line 2368
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2369
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2370
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_RADICALS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2371
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KANGXI_RADICALS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2372
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2373
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2374
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2375
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2376
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2377
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KANBUN:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2378
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO_EXTENDED:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2379
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2380
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->ENCLOSED_CJK_LETTERS_AND_MONTHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2381
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2382
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2383
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2384
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2385
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2386
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_FORMS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2387
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2388
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2389
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2390
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/yingyonghui/market/util/b;->j:Ljava/util/Set;

    .line 2712
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/yingyonghui/market/util/b;->k:[C

    return-void

    :cond_0
    move v0, v2

    .line 35
    goto/16 :goto_0

    .line 2712
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 2719
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-byte v2, p0, v0

    ushr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    sget-object v4, Lcom/yingyonghui/market/util/b;->k:[C

    aget-char v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v2, Lcom/yingyonghui/market/util/b;->k:[C

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 68
    sget-object v0, Lcom/yingyonghui/market/util/b;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2275
    if-ne p0, p1, :cond_0

    .line 2276
    const/4 v0, 0x1

    .line 2283
    :goto_0
    return v0

    .line 2278
    :cond_0
    if-eqz p0, :cond_1

    .line 2279
    if-eqz p1, :cond_1

    .line 2280
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 2283
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 72
    sget-object v0, Lcom/yingyonghui/market/util/b;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 76
    sget-object v0, Lcom/yingyonghui/market/util/b;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 80
    sget-object v0, Lcom/yingyonghui/market/util/b;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 375
    const-string v2, " \r\n\t\u3000\u00a0\u2007\u202f"

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-gt v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-lt v0, v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 2187
    invoke-static {p0}, Lcom/yingyonghui/market/util/b;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2197
    invoke-static {p0}, Lcom/yingyonghui/market/util/b;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2198
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 2199
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2203
    :goto_1
    return v0

    .line 2198
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2203
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter

    .prologue
    .line 2212
    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method
