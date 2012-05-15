.class public final Lcom/yingyonghui/market/provider/a;
.super Landroid/database/CursorWrapper;
.source "ReadOnlyCursorWrapper.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# instance fields
.field private a:Landroid/database/CrossProcessCursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 12
    check-cast p1, Landroid/database/CrossProcessCursor;

    iput-object p1, p0, Lcom/yingyonghui/market/provider/a;->a:Landroid/database/CrossProcessCursor;

    .line 13
    return-void
.end method


# virtual methods
.method public final fillWindow(ILandroid/database/CursorWindow;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yingyonghui/market/provider/a;->a:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 25
    return-void
.end method

.method public final getWindow()Landroid/database/CursorWindow;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yingyonghui/market/provider/a;->a:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    return-object v0
.end method

.method public final onMove(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yingyonghui/market/provider/a;->a:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    move-result v0

    return v0
.end method
