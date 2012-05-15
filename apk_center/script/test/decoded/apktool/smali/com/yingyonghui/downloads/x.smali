.class final Lcom/yingyonghui/downloads/x;
.super Landroid/database/CursorWrapper;
.source "DownloadProvider.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# instance fields
.field private a:Landroid/database/CrossProcessCursor;

.field private synthetic b:Lcom/yingyonghui/downloads/DownloadProvider;


# direct methods
.method public constructor <init>(Lcom/yingyonghui/downloads/DownloadProvider;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1140
    iput-object p1, p0, Lcom/yingyonghui/downloads/x;->b:Lcom/yingyonghui/downloads/DownloadProvider;

    .line 1141
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 1142
    check-cast p2, Landroid/database/CrossProcessCursor;

    iput-object p2, p0, Lcom/yingyonghui/downloads/x;->a:Landroid/database/CrossProcessCursor;

    .line 1143
    return-void
.end method


# virtual methods
.method public final fillWindow(ILandroid/database/CursorWindow;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/yingyonghui/downloads/x;->a:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 1155
    return-void
.end method

.method public final getWindow()Landroid/database/CursorWindow;
    .locals 1

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/yingyonghui/downloads/x;->a:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    return-object v0
.end method

.method public final onMove(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/yingyonghui/downloads/x;->a:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    move-result v0

    return v0
.end method
