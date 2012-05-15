.class public Lcom/yingyonghui/market/ActivityTab4Search;
.super Landroid/app/TabActivity;
.source "ActivityTab4Search.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field private static final k:[Ljava/lang/String;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/AutoCompleteTextView;

.field private c:Landroid/widget/TabHost;

.field private d:Landroid/widget/TabWidget;

.field private e:Ljava/util/ArrayList;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Z

.field private j:Z

.field private l:Landroid/view/View$OnClickListener;

.field private final m:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "keyword"

    aput-object v2, v0, v1

    sput-object v0, Lcom/yingyonghui/market/ActivityTab4Search;->k:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 63
    const/4 v0, 0x3

    iput v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->h:I

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->j:Z

    .line 161
    new-instance v0, Lcom/yingyonghui/market/bm;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/bm;-><init>(Lcom/yingyonghui/market/ActivityTab4Search;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->l:Landroid/view/View$OnClickListener;

    .line 226
    new-instance v0, Lcom/yingyonghui/market/bj;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/bj;-><init>(Lcom/yingyonghui/market/ActivityTab4Search;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->m:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityTab4Search;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/yingyonghui/market/ActivityTab4Search;->g:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 186
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yingyonghui/market/util/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    const-string v1, ".rev"

    invoke-static {v1, v0}, Lcom/yingyonghui/market/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 193
    const-string v1, "revision"

    invoke-static {p0, v1}, Lcom/yingyonghui/market/util/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090079

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 198
    :cond_2
    const-string v1, ".host"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 199
    const-string v1, ".host"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {v0}, Lcom/yingyonghui/market/util/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".appchina.com/market/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yingyonghui/market/online/l;->a:Ljava/lang/String;

    .line 202
    invoke-static {}, Lcom/yingyonghui/market/online/l;->a()V

    .line 203
    const-string v0, "Host \u4fee\u6539\u6210\u529f\uff01"

    invoke-static {p0, v0}, Lcom/yingyonghui/market/util/GlobalUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_3
    const-string v1, "\'"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 208
    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 210
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityTab4Search;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/yingyonghui/market/provider/l;->a:Landroid/net/Uri;

    sget-object v2, Lcom/yingyonghui/market/ActivityTab4Search;->k:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keyword=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "date DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 212
    :goto_1
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->i:Z

    if-nez v0, :cond_4

    .line 213
    invoke-virtual {p0, v7}, Lcom/yingyonghui/market/ActivityTab4Search;->a(I)V

    .line 214
    iput-boolean v7, p0, Lcom/yingyonghui/market/ActivityTab4Search;->i:Z

    .line 216
    :cond_4
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityTab4Search;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityTab4Search;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/ActivityTab4Search;->g:Ljava/lang/String;

    :goto_2
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityTab4Search;->g:Ljava/lang/String;

    if-nez v1, :cond_5

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->g:Ljava/lang/String;

    const-string v1, "q="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->g:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->g:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->g:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "broadcast_search_request"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "source"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "keyword"

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityTab4Search;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "title"

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityTab4Search;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "searchType"

    iget v2, p0, Lcom/yingyonghui/market/ActivityTab4Search;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityTab4Search;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityTab4Search;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "searchByKeyword"

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityTab4Search;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 210
    :cond_6
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "keyword"

    invoke-virtual {v1, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/yingyonghui/market/provider/l;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_1

    .line 216
    :cond_7
    iput-object v6, p0, Lcom/yingyonghui/market/ActivityTab4Search;->g:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityTab4Search;)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->j:Z

    return v0
.end method

.method static synthetic b(Lcom/yingyonghui/market/ActivityTab4Search;)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->j:Z

    return v0
.end method

.method static synthetic c(Lcom/yingyonghui/market/ActivityTab4Search;)Landroid/widget/TabHost;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->c:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic d(Lcom/yingyonghui/market/ActivityTab4Search;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->b:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic e(Lcom/yingyonghui/market/ActivityTab4Search;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityTab4Search;->a()V

    return-void
.end method

.method static synthetic f(Lcom/yingyonghui/market/ActivityTab4Search;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a(I)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0200a9

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 397
    if-nez p1, :cond_0

    .line 398
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 399
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityTab4Search;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 400
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 402
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 403
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 404
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 405
    invoke-virtual {v0}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 417
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 419
    check-cast v0, Landroid/widget/TextView;

    .line 420
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object v0, v1

    .line 422
    check-cast v0, Landroid/widget/TextView;

    .line 423
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 424
    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 408
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityTab4Search;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 409
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 411
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 412
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 413
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 414
    invoke-virtual {v0}, Landroid/view/View;->requestFocusFromTouch()Z

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 174
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 182
    :cond_0
    invoke-super {p0, p1}, Landroid/app/TabActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 177
    :pswitch_0
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityTab4Search;->a()V

    .line 178
    const/4 v0, 0x1

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter

    .prologue
    const/4 v8, -0x1

    const/high16 v11, 0x4190

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 77
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0, v7}, Lcom/yingyonghui/market/ActivityTab4Search;->requestWindowFeature(I)Z

    .line 81
    const v0, 0x103000a

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityTab4Search;->setTheme(I)V

    .line 84
    const v0, 0x7f030049

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityTab4Search;->setContentView(I)V

    .line 87
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityTab4Search;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->c:Landroid/widget/TabHost;

    .line 88
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->c:Landroid/widget/TabHost;

    invoke-virtual {v0, v7}, Landroid/widget/TabHost;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabWidget;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->d:Landroid/widget/TabWidget;

    .line 89
    const v0, 0x7f0b00f6

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityTab4Search;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityTab4Search;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    sget-object v1, Lcom/yingyonghui/market/provider/l;->a:Landroid/net/Uri;

    sget-object v2, Lcom/yingyonghui/market/ActivityTab4Search;->k:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/yingyonghui/market/dx;

    invoke-direct {v1, p0, v0}, Lcom/yingyonghui/market/dx;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->a:Landroid/view/View;

    const v2, 0x7f0b00f8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->b:Landroid/widget/AutoCompleteTextView;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->b:Landroid/widget/AutoCompleteTextView;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v7}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->b:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/yingyonghui/market/bp;

    invoke-direct {v1, p0}, Lcom/yingyonghui/market/bp;-><init>(Lcom/yingyonghui/market/ActivityTab4Search;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->a:Landroid/view/View;

    const v1, 0x7f0b00f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityTab4Search;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->a:Landroid/view/View;

    const v1, 0x7f0b00f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityTab4Search;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->e:Ljava/util/ArrayList;

    new-instance v2, Landroid/widget/TableLayout$LayoutParams;

    const/high16 v0, 0x3f80

    invoke-direct {v2, v8, v8, v0}, Landroid/widget/TableLayout$LayoutParams;-><init>(IIF)V

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityTab4Search;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityTab4Search;->c:Landroid/widget/TabHost;

    const-string v3, "day"

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const v1, 0x7f030052

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f0200a9

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const v4, 0x7f090050

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityTab4Search;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200da

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_1
    const-class v4, Landroid/widget/TabHost$TabSpec;

    const-string v5, "setIndicator"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/view/View;

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v5, v7

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    iget-object v4, p0, Lcom/yingyonghui/market/ActivityTab4Search;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/yingyonghui/market/ActivitySearchSuggestion;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v3, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityTab4Search;->c:Landroid/widget/TabHost;

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityTab4Search;->c:Landroid/widget/TabHost;

    const-string v3, "result"

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v3, 0x7f030052

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0200a9

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const v3, 0x7f090052

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityTab4Search;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200da

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_2
    const-class v2, Landroid/widget/TabHost$TabSpec;

    const-string v3, "setIndicator"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/view/View;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    iget-object v2, p0, Lcom/yingyonghui/market/ActivityTab4Search;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/yingyonghui/market/ActivityListApp;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "_id"

    const/16 v3, 0x38

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "type"

    const-string v3, "search"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "fromPage"

    const-string v3, "SearchResult"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->c:Landroid/widget/TabHost;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->c:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    invoke-virtual {p0, v10}, Lcom/yingyonghui/market/ActivityTab4Search;->a(I)V

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "show_search_result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "broadcast_search_request"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityTab4Search;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yingyonghui/market/ActivityTab4Search;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    return-void

    :catch_0
    move-exception v0

    move-object v0, v6

    goto/16 :goto_0

    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v4

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    .line 97
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityTab4Search;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityTab4Search;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 98
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 109
    const-string v0, "day"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 115
    :goto_0
    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityTab4Search;->a(I)V

    .line 116
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityTab4Search;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Search"

    invoke-static {v1, v2, v0}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 117
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
