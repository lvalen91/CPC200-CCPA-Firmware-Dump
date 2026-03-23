.class public Landroidx/appcompat/app/AlertController$f;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/app/AlertController;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "f"
.end annotation
.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/appcompat/app/AlertController$f$e;
  }
.end annotation

.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:Z

.field public F:[Z

.field public G:Z

.field public H:Z

.field public I:I

.field public J:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public K:Landroid/database/Cursor;

.field public L:Ljava/lang/String;

.field public M:Ljava/lang/String;

.field public N:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public O:Landroidx/appcompat/app/AlertController$f$e;

.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/LayoutInflater;

.field public c:I

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:I

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/view/View;

.field public h:Ljava/lang/CharSequence;

.field public i:Ljava/lang/CharSequence;

.field public j:Landroid/graphics/drawable/Drawable;

.field public k:Landroid/content/DialogInterface$OnClickListener;

.field public l:Ljava/lang/CharSequence;

.field public m:Landroid/graphics/drawable/Drawable;

.field public n:Landroid/content/DialogInterface$OnClickListener;

.field public o:Ljava/lang/CharSequence;

.field public p:Landroid/graphics/drawable/Drawable;

.field public q:Landroid/content/DialogInterface$OnClickListener;

.field public r:Z

.field public s:Landroid/content/DialogInterface$OnCancelListener;

.field public t:Landroid/content/DialogInterface$OnDismissListener;

.field public u:Landroid/content/DialogInterface$OnKeyListener;

.field public v:[Ljava/lang/CharSequence;

.field public w:Landroid/widget/ListAdapter;

.field public x:Landroid/content/DialogInterface$OnClickListener;

.field public y:I

.field public z:Landroid/view/View;

.method public constructor <init>(Landroid/content/Context;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput v0, p0, Landroidx/appcompat/app/AlertController$f;->c:I
  .line 3
    iput v0, p0, Landroidx/appcompat/app/AlertController$f;->e:I
  .line 4
    iput-boolean v0, p0, Landroidx/appcompat/app/AlertController$f;->E:Z
    const/4 v0, -1
  .line 5
    iput v0, p0, Landroidx/appcompat/app/AlertController$f;->I:I
  .line 6
    iput-object p1, p0, Landroidx/appcompat/app/AlertController$f;->a:Landroid/content/Context;
    const/4 v0, 1
  .line 7
    iput-boolean v0, p0, Landroidx/appcompat/app/AlertController$f;->r:Z
    const-string v0, "layout_inflater"
  .line 8
    invoke-virtual { p1, v0 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/view/LayoutInflater;
    iput-object p1, p0, Landroidx/appcompat/app/AlertController$f;->b:Landroid/view/LayoutInflater;
    return-void
.end method

.method private b(Landroidx/appcompat/app/AlertController;)V
  .registers 12
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$f;->b:Landroid/view/LayoutInflater;
    iget v1, p1, Landroidx/appcompat/app/AlertController;->L:I
    const/4 v2, 0
  .line 2
    invoke-virtual { v0, v1, v2 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroidx/appcompat/app/AlertController$RecycleListView;
  .line 3
    iget-boolean v1, p0, Landroidx/appcompat/app/AlertController$f;->G:Z
    const/4 v8, 1
    if-eqz v1, :L1
  .line 4
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$f;->K:Landroid/database/Cursor;
    if-nez v1, :L0
  .line 5
    new-instance v9, Landroidx/appcompat/app/AlertController$f$a;
    iget-object v3, p0, Landroidx/appcompat/app/AlertController$f;->a:Landroid/content/Context;
    iget v4, p1, Landroidx/appcompat/app/AlertController;->M:I
    const v5, 16908308
    iget-object v6, p0, Landroidx/appcompat/app/AlertController$f;->v:[Ljava/lang/CharSequence;
    move-object v1, v9
    move-object v2, p0
    move-object v7, v0
    invoke-direct/range { v1 .. v7 }, Landroidx/appcompat/app/AlertController$f$a;-><init>(Landroidx/appcompat/app/AlertController$f;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroidx/appcompat/app/AlertController$RecycleListView;)V
    goto :L6
  :L0
  .line 6
    new-instance v9, Landroidx/appcompat/app/AlertController$f$b;
    iget-object v3, p0, Landroidx/appcompat/app/AlertController$f;->a:Landroid/content/Context;
    iget-object v4, p0, Landroidx/appcompat/app/AlertController$f;->K:Landroid/database/Cursor;
    const/4 v5, 0
    move-object v1, v9
    move-object v2, p0
    move-object v6, v0
    move-object v7, p1
    invoke-direct/range { v1 .. v7 }, Landroidx/appcompat/app/AlertController$f$b;-><init>(Landroidx/appcompat/app/AlertController$f;Landroid/content/Context;Landroid/database/Cursor;ZLandroidx/appcompat/app/AlertController$RecycleListView;Landroidx/appcompat/app/AlertController;)V
    goto :L6
  :L1
  .line 7
    iget-boolean v1, p0, Landroidx/appcompat/app/AlertController$f;->H:Z
    if-eqz v1, :L2
  .line 8
    iget v1, p1, Landroidx/appcompat/app/AlertController;->N:I
    goto :L3
  :L2
  .line 9
    iget v1, p1, Landroidx/appcompat/app/AlertController;->O:I
  :L3
    move v4, v1
  .line 10
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$f;->K:Landroid/database/Cursor;
    const v2, 16908308
    if-eqz v1, :L4
  .line 11
    new-instance v9, Landroid/widget/SimpleCursorAdapter;
    iget-object v3, p0, Landroidx/appcompat/app/AlertController$f;->a:Landroid/content/Context;
    iget-object v5, p0, Landroidx/appcompat/app/AlertController$f;->K:Landroid/database/Cursor;
    new-array v6, v8, [Ljava/lang/String;
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$f;->L:Ljava/lang/String;
    const/4 v7, 0
    aput-object v1, v6, v7
    new-array v1, v8, [I
    aput v2, v1, v7
    move-object v2, v9
    move-object v7, v1
    invoke-direct/range { v2 .. v7 }, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    goto :L6
  :L4
  .line 12
    iget-object v9, p0, Landroidx/appcompat/app/AlertController$f;->w:Landroid/widget/ListAdapter;
    if-eqz v9, :L5
    goto :L6
  :L5
  .line 13
    new-instance v9, Landroidx/appcompat/app/AlertController$h;
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$f;->a:Landroid/content/Context;
    iget-object v3, p0, Landroidx/appcompat/app/AlertController$f;->v:[Ljava/lang/CharSequence;
    invoke-direct { v9, v1, v4, v2, v3 }, Landroidx/appcompat/app/AlertController$h;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V
  :L6
  .line 14
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$f;->O:Landroidx/appcompat/app/AlertController$f$e;
    if-eqz v1, :L7
  .line 15
    invoke-interface { v1, v0 }, Landroidx/appcompat/app/AlertController$f$e;->a(Landroid/widget/ListView;)V
  :L7
  .line 16
    iput-object v9, p1, Landroidx/appcompat/app/AlertController;->H:Landroid/widget/ListAdapter;
  .line 17
    iget v1, p0, Landroidx/appcompat/app/AlertController$f;->I:I
    iput v1, p1, Landroidx/appcompat/app/AlertController;->I:I
  .line 18
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$f;->x:Landroid/content/DialogInterface$OnClickListener;
    if-eqz v1, :L8
  .line 19
    new-instance v1, Landroidx/appcompat/app/AlertController$f$c;
    invoke-direct { v1, p0, p1 }, Landroidx/appcompat/app/AlertController$f$c;-><init>(Landroidx/appcompat/app/AlertController$f;Landroidx/appcompat/app/AlertController;)V
    invoke-virtual { v0, v1 }, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    goto :L9
  :L8
  .line 20
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$f;->J:Landroid/content/DialogInterface$OnMultiChoiceClickListener;
    if-eqz v1, :L9
  .line 21
    new-instance v1, Landroidx/appcompat/app/AlertController$f$d;
    invoke-direct { v1, p0, v0, p1 }, Landroidx/appcompat/app/AlertController$f$d;-><init>(Landroidx/appcompat/app/AlertController$f;Landroidx/appcompat/app/AlertController$RecycleListView;Landroidx/appcompat/app/AlertController;)V
    invoke-virtual { v0, v1 }, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
  :L9
  .line 22
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$f;->N:Landroid/widget/AdapterView$OnItemSelectedListener;
    if-eqz v1, :L10
  .line 23
    invoke-virtual { v0, v1 }, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
  :L10
  .line 24
    iget-boolean v1, p0, Landroidx/appcompat/app/AlertController$f;->H:Z
    if-eqz v1, :L11
  .line 25
    invoke-virtual { v0, v8 }, Landroid/widget/ListView;->setChoiceMode(I)V
    goto :L12
  :L11
  .line 26
    iget-boolean v1, p0, Landroidx/appcompat/app/AlertController$f;->G:Z
    if-eqz v1, :L12
    const/4 v1, 2
  .line 27
    invoke-virtual { v0, v1 }, Landroid/widget/ListView;->setChoiceMode(I)V
  :L12
  .line 28
    iput-object v0, p1, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;
    return-void
.end method

.method public a(Landroidx/appcompat/app/AlertController;)V
  .registers 9
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$f;->g:Landroid/view/View;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p1, v0 }, Landroidx/appcompat/app/AlertController;->l(Landroid/view/View;)V
    goto :L4
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$f;->f:Ljava/lang/CharSequence;
    if-eqz v0, :L1
  .line 4
    invoke-virtual { p1, v0 }, Landroidx/appcompat/app/AlertController;->q(Ljava/lang/CharSequence;)V
  :L1
  .line 5
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$f;->d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L2
  .line 6
    invoke-virtual { p1, v0 }, Landroidx/appcompat/app/AlertController;->n(Landroid/graphics/drawable/Drawable;)V
  :L2
  .line 7
    iget v0, p0, Landroidx/appcompat/app/AlertController$f;->c:I
    if-eqz v0, :L3
  .line 8
    invoke-virtual { p1, v0 }, Landroidx/appcompat/app/AlertController;->m(I)V
  :L3
  .line 9
    iget v0, p0, Landroidx/appcompat/app/AlertController$f;->e:I
    if-eqz v0, :L4
  .line 10
    invoke-virtual { p1, v0 }, Landroidx/appcompat/app/AlertController;->c(I)I
    move-result v0
    invoke-virtual { p1, v0 }, Landroidx/appcompat/app/AlertController;->m(I)V
  :L4
  .line 11
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$f;->h:Ljava/lang/CharSequence;
    if-eqz v0, :L5
  .line 12
    invoke-virtual { p1, v0 }, Landroidx/appcompat/app/AlertController;->o(Ljava/lang/CharSequence;)V
  :L5
  .line 13
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$f;->i:Ljava/lang/CharSequence;
    if-nez v0, :L6
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$f;->j:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L7
  :L6
    const/4 v2, -1
  .line 14
    iget-object v3, p0, Landroidx/appcompat/app/AlertController$f;->i:Ljava/lang/CharSequence;
    iget-object v4, p0, Landroidx/appcompat/app/AlertController$f;->k:Landroid/content/DialogInterface$OnClickListener;
    const/4 v5, 0
    iget-object v6, p0, Landroidx/appcompat/app/AlertController$f;->j:Landroid/graphics/drawable/Drawable;
    move-object v1, p1
    invoke-virtual/range { v1 .. v6 }, Landroidx/appcompat/app/AlertController;->k(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V
  :L7
  .line 15
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$f;->l:Ljava/lang/CharSequence;
    if-nez v0, :L8
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$f;->m:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L9
  :L8
    const/4 v2, -2
  .line 16
    iget-object v3, p0, Landroidx/appcompat/app/AlertController$f;->l:Ljava/lang/CharSequence;
    iget-object v4, p0, Landroidx/appcompat/app/AlertController$f;->n:Landroid/content/DialogInterface$OnClickListener;
    const/4 v5, 0
    iget-object v6, p0, Landroidx/appcompat/app/AlertController$f;->m:Landroid/graphics/drawable/Drawable;
    move-object v1, p1
    invoke-virtual/range { v1 .. v6 }, Landroidx/appcompat/app/AlertController;->k(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V
  :L9
  .line 17
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$f;->o:Ljava/lang/CharSequence;
    if-nez v0, :L10
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$f;->p:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L11
  :L10
    const/4 v2, -3
  .line 18
    iget-object v3, p0, Landroidx/appcompat/app/AlertController$f;->o:Ljava/lang/CharSequence;
    iget-object v4, p0, Landroidx/appcompat/app/AlertController$f;->q:Landroid/content/DialogInterface$OnClickListener;
    const/4 v5, 0
    iget-object v6, p0, Landroidx/appcompat/app/AlertController$f;->p:Landroid/graphics/drawable/Drawable;
    move-object v1, p1
    invoke-virtual/range { v1 .. v6 }, Landroidx/appcompat/app/AlertController;->k(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V
  :L11
  .line 19
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$f;->v:[Ljava/lang/CharSequence;
    if-nez v0, :L12
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$f;->K:Landroid/database/Cursor;
    if-nez v0, :L12
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$f;->w:Landroid/widget/ListAdapter;
    if-eqz v0, :L13
  :L12
  .line 20
    invoke-direct { p0, p1 }, Landroidx/appcompat/app/AlertController$f;->b(Landroidx/appcompat/app/AlertController;)V
  :L13
  .line 21
    iget-object v2, p0, Landroidx/appcompat/app/AlertController$f;->z:Landroid/view/View;
    if-eqz v2, :L15
  .line 22
    iget-boolean v0, p0, Landroidx/appcompat/app/AlertController$f;->E:Z
    if-eqz v0, :L14
  .line 23
    iget v3, p0, Landroidx/appcompat/app/AlertController$f;->A:I
    iget v4, p0, Landroidx/appcompat/app/AlertController$f;->B:I
    iget v5, p0, Landroidx/appcompat/app/AlertController$f;->C:I
    iget v6, p0, Landroidx/appcompat/app/AlertController$f;->D:I
    move-object v1, p1
    invoke-virtual/range { v1 .. v6 }, Landroidx/appcompat/app/AlertController;->t(Landroid/view/View;IIII)V
    goto :L16
  :L14
  .line 24
    invoke-virtual { p1, v2 }, Landroidx/appcompat/app/AlertController;->s(Landroid/view/View;)V
    goto :L16
  :L15
  .line 25
    iget v0, p0, Landroidx/appcompat/app/AlertController$f;->y:I
    if-eqz v0, :L16
  .line 26
    invoke-virtual { p1, v0 }, Landroidx/appcompat/app/AlertController;->r(I)V
  :L16
    return-void
.end method
