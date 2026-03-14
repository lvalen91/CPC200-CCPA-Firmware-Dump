.class public abstract Lc/h/a/c;
.super Lc/h/a/a;
.source "SourceFile"

.field private j:I

.field private k:I

.field private l:Landroid/view/LayoutInflater;

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 5
  .line 1
    invoke-direct { p0, p1, p3, p4 }, Lc/h/a/a;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
  .line 2
    iput p2, p0, Lc/h/a/c;->k:I
    iput p2, p0, Lc/h/a/c;->j:I
    const-string p2, "layout_inflater"
  .line 3
    invoke-virtual { p1, p2 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/view/LayoutInflater;
    iput-object p1, p0, Lc/h/a/c;->l:Landroid/view/LayoutInflater;
    return-void
.end method

.method public g(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
  .registers 5
  .line 1
    iget-object p1, p0, Lc/h/a/c;->l:Landroid/view/LayoutInflater;
    iget p2, p0, Lc/h/a/c;->k:I
    const/4 v0, 0
    invoke-virtual { p1, p2, p3, v0 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object p1
    return-object p1
.end method

.method public h(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
  .registers 5
  .line 1
    iget-object p1, p0, Lc/h/a/c;->l:Landroid/view/LayoutInflater;
    iget p2, p0, Lc/h/a/c;->j:I
    const/4 v0, 0
    invoke-virtual { p1, p2, p3, v0 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object p1
    return-object p1
.end method
