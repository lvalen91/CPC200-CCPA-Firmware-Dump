.class public abstract Lc/h/a/a;
.super Landroid/widget/BaseAdapter;
.implements Landroid/widget/Filterable;
.implements Lc/h/a/b$a;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lc/h/a/a$b;,
    Lc/h/a/a$a;
  }
.end annotation

.field protected b:Z

.field protected c:Z

.field protected d:Landroid/database/Cursor;

.field protected e:Landroid/content/Context;

.field protected f:I

.field protected g:Lc/h/a/a$a;

.field protected h:Landroid/database/DataSetObserver;

.field protected i:Lc/h/a/b;

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Landroid/widget/BaseAdapter;-><init>()V
    if-eqz p3, :L0
    const/4 p3, 1
    goto :L1
  :L0
    const/4 p3, 2
  :L1
  .line 2
    invoke-virtual { p0, p1, p2, p3 }, Lc/h/a/a;->f(Landroid/content/Context;Landroid/database/Cursor;I)V
    return-void
.end method

.method public abstract a(Landroid/database/Cursor;)Ljava/lang/CharSequence;
.end method

.method public b(Landroid/database/Cursor;)V
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lc/h/a/a;->j(Landroid/database/Cursor;)Landroid/database/Cursor;
    move-result-object p1
    if-eqz p1, :L0
  .line 2
    invoke-interface { p1 }, Landroid/database/Cursor;->close()V
  :L0
    return-void
.end method

.method public c()Landroid/database/Cursor;
  .registers 2
  .line 1
    iget-object v0, p0, Lc/h/a/a;->d:Landroid/database/Cursor;
    return-object v0
.end method

.method public abstract e(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method f(Landroid/content/Context;Landroid/database/Cursor;I)V
  .registers 7
    and-int/lit8 v0, p3, 1
    const/4 v1, 0
    const/4 v2, 1
    if-ne v0, v2, :L0
    or-int/lit8 p3, p3, 2
  .line 1
    iput-boolean v2, p0, Lc/h/a/a;->c:Z
    goto :L1
  :L0
  .line 2
    iput-boolean v1, p0, Lc/h/a/a;->c:Z
  :L1
    if-eqz p2, :L2
    const/4 v1, 1
  :L2
  .line 3
    iput-object p2, p0, Lc/h/a/a;->d:Landroid/database/Cursor;
  .line 4
    iput-boolean v1, p0, Lc/h/a/a;->b:Z
  .line 5
    iput-object p1, p0, Lc/h/a/a;->e:Landroid/content/Context;
    if-eqz v1, :L3
    const-string p1, "_id"
  .line 6
    invoke-interface { p2, p1 }, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    move-result p1
    goto :L4
  :L3
    const/4 p1, -1
  :L4
    iput p1, p0, Lc/h/a/a;->f:I
    const/4 p1, 2
    and-int/2addr p3, p1
    if-ne p3, p1, :L5
  .line 7
    new-instance p1, Lc/h/a/a$a;
    invoke-direct { p1, p0 }, Lc/h/a/a$a;-><init>(Lc/h/a/a;)V
    iput-object p1, p0, Lc/h/a/a;->g:Lc/h/a/a$a;
  .line 8
    new-instance p1, Lc/h/a/a$b;
    invoke-direct { p1, p0 }, Lc/h/a/a$b;-><init>(Lc/h/a/a;)V
    iput-object p1, p0, Lc/h/a/a;->h:Landroid/database/DataSetObserver;
    goto :L6
  :L5
    const/4 p1, 0
  .line 9
    iput-object p1, p0, Lc/h/a/a;->g:Lc/h/a/a$a;
  .line 10
    iput-object p1, p0, Lc/h/a/a;->h:Landroid/database/DataSetObserver;
  :L6
    if-eqz v1, :L8
  .line 11
    iget-object p1, p0, Lc/h/a/a;->g:Lc/h/a/a$a;
    if-eqz p1, :L7
    invoke-interface { p2, p1 }, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
  :L7
  .line 12
    iget-object p1, p0, Lc/h/a/a;->h:Landroid/database/DataSetObserver;
    if-eqz p1, :L8
    invoke-interface { p2, p1 }, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
  :L8
    return-void
.end method

.method public abstract g(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getCount()I
  .registers 2
  .line 1
    iget-boolean v0, p0, Lc/h/a/a;->b:Z
    if-eqz v0, :L0
    iget-object v0, p0, Lc/h/a/a;->d:Landroid/database/Cursor;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0 }, Landroid/database/Cursor;->getCount()I
    move-result v0
    return v0
  :L0
    const/4 v0, 0
    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
  .registers 5
  .line 1
    iget-boolean v0, p0, Lc/h/a/a;->b:Z
    if-eqz v0, :L1
  .line 2
    iget-object v0, p0, Lc/h/a/a;->d:Landroid/database/Cursor;
    invoke-interface { v0, p1 }, Landroid/database/Cursor;->moveToPosition(I)Z
    if-nez p2, :L0
  .line 3
    iget-object p1, p0, Lc/h/a/a;->e:Landroid/content/Context;
    iget-object p2, p0, Lc/h/a/a;->d:Landroid/database/Cursor;
    invoke-virtual { p0, p1, p2, p3 }, Lc/h/a/a;->g(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    move-result-object p2
  :L0
  .line 4
    iget-object p1, p0, Lc/h/a/a;->e:Landroid/content/Context;
    iget-object p3, p0, Lc/h/a/a;->d:Landroid/database/Cursor;
    invoke-virtual { p0, p2, p1, p3 }, Lc/h/a/a;->e(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    return-object p2
  :L1
    const/4 p1, 0
    return-object p1
.end method

.method public getFilter()Landroid/widget/Filter;
  .registers 2
  .line 1
    iget-object v0, p0, Lc/h/a/a;->i:Lc/h/a/b;
    if-nez v0, :L0
  .line 2
    new-instance v0, Lc/h/a/b;
    invoke-direct { v0, p0 }, Lc/h/a/b;-><init>(Lc/h/a/b$a;)V
    iput-object v0, p0, Lc/h/a/a;->i:Lc/h/a/b;
  :L0
  .line 3
    iget-object v0, p0, Lc/h/a/a;->i:Lc/h/a/b;
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
  .registers 3
  .line 1
    iget-boolean v0, p0, Lc/h/a/a;->b:Z
    if-eqz v0, :L0
    iget-object v0, p0, Lc/h/a/a;->d:Landroid/database/Cursor;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0, p1 }, Landroid/database/Cursor;->moveToPosition(I)Z
  .line 3
    iget-object p1, p0, Lc/h/a/a;->d:Landroid/database/Cursor;
    return-object p1
  :L0
    const/4 p1, 0
    return-object p1
.end method

.method public getItemId(I)J
  .registers 5
  .line 1
    iget-boolean v0, p0, Lc/h/a/a;->b:Z
    const-wide/16 v1, 0
    if-eqz v0, :L0
    iget-object v0, p0, Lc/h/a/a;->d:Landroid/database/Cursor;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0, p1 }, Landroid/database/Cursor;->moveToPosition(I)Z
    move-result p1
    if-eqz p1, :L0
  .line 3
    iget-object p1, p0, Lc/h/a/a;->d:Landroid/database/Cursor;
    iget v0, p0, Lc/h/a/a;->f:I
    invoke-interface { p1, v0 }, Landroid/database/Cursor;->getLong(I)J
    move-result-wide v0
    return-wide v0
  :L0
    return-wide v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
  .registers 5
  .line 1
    iget-boolean v0, p0, Lc/h/a/a;->b:Z
    if-eqz v0, :L2
  .line 2
    iget-object v0, p0, Lc/h/a/a;->d:Landroid/database/Cursor;
    invoke-interface { v0, p1 }, Landroid/database/Cursor;->moveToPosition(I)Z
    move-result v0
    if-eqz v0, :L1
    if-nez p2, :L0
  .line 3
    iget-object p1, p0, Lc/h/a/a;->e:Landroid/content/Context;
    iget-object p2, p0, Lc/h/a/a;->d:Landroid/database/Cursor;
    invoke-virtual { p0, p1, p2, p3 }, Lc/h/a/a;->h(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    move-result-object p2
  :L0
  .line 4
    iget-object p1, p0, Lc/h/a/a;->e:Landroid/content/Context;
    iget-object p3, p0, Lc/h/a/a;->d:Landroid/database/Cursor;
    invoke-virtual { p0, p2, p1, p3 }, Lc/h/a/a;->e(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    return-object p2
  :L1
  .line 5
    new-instance p2, Ljava/lang/IllegalStateException;
    new-instance p3, Ljava/lang/StringBuilder;
    invoke-direct { p3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "couldn't move cursor to position "
    invoke-virtual { p3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p2, p1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p2
  :L2
  .line 6
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "this should only be called when the cursor is valid"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public abstract h(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected i()V
  .registers 2
  .line 1
    iget-boolean v0, p0, Lc/h/a/a;->c:Z
    if-eqz v0, :L0
    iget-object v0, p0, Lc/h/a/a;->d:Landroid/database/Cursor;
    if-eqz v0, :L0
    invoke-interface { v0 }, Landroid/database/Cursor;->isClosed()Z
    move-result v0
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lc/h/a/a;->d:Landroid/database/Cursor;
    invoke-interface { v0 }, Landroid/database/Cursor;->requery()Z
    move-result v0
    iput-boolean v0, p0, Lc/h/a/a;->b:Z
  :L0
    return-void
.end method

.method public j(Landroid/database/Cursor;)Landroid/database/Cursor;
  .registers 4
  .line 1
    iget-object v0, p0, Lc/h/a/a;->d:Landroid/database/Cursor;
    if-ne p1, v0, :L0
    const/4 p1, 0
    return-object p1
  :L0
    if-eqz v0, :L2
  .line 2
    iget-object v1, p0, Lc/h/a/a;->g:Lc/h/a/a$a;
    if-eqz v1, :L1
    invoke-interface { v0, v1 }, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V
  :L1
  .line 3
    iget-object v1, p0, Lc/h/a/a;->h:Landroid/database/DataSetObserver;
    if-eqz v1, :L2
    invoke-interface { v0, v1 }, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
  :L2
  .line 4
    iput-object p1, p0, Lc/h/a/a;->d:Landroid/database/Cursor;
    if-eqz p1, :L5
  .line 5
    iget-object v1, p0, Lc/h/a/a;->g:Lc/h/a/a$a;
    if-eqz v1, :L3
    invoke-interface { p1, v1 }, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
  :L3
  .line 6
    iget-object v1, p0, Lc/h/a/a;->h:Landroid/database/DataSetObserver;
    if-eqz v1, :L4
    invoke-interface { p1, v1 }, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
  :L4
    const-string v1, "_id"
  .line 7
    invoke-interface { p1, v1 }, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    move-result p1
    iput p1, p0, Lc/h/a/a;->f:I
    const/4 p1, 1
  .line 8
    iput-boolean p1, p0, Lc/h/a/a;->b:Z
  .line 9
    invoke-virtual { p0 }, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    goto :L6
  :L5
    const/4 p1, -1
  .line 10
    iput p1, p0, Lc/h/a/a;->f:I
    const/4 p1, 0
  .line 11
    iput-boolean p1, p0, Lc/h/a/a;->b:Z
  .line 12
    invoke-virtual { p0 }, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V
  :L6
    return-object v0
.end method
