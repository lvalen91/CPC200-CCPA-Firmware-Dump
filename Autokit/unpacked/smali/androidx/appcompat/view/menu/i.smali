.class public final Landroidx/appcompat/view/menu/i;
.super Ljava/lang/Object;
.implements Lc/g/e/a/b;
.source "SourceFile"

.field private A:Landroid/view/View;

.field private B:Landroidx/core/view/b;

.field private C:Landroid/view/MenuItem$OnActionExpandListener;

.field private D:Z

.field private E:Landroid/view/ContextMenu$ContextMenuInfo;

.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:Landroid/content/Intent;

.field private h:C

.field private i:I

.field private j:C

.field private k:I

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:I

.field n:Landroidx/appcompat/view/menu/g;

.field private o:Landroidx/appcompat/view/menu/r;

.field private p:Ljava/lang/Runnable;

.field private q:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private r:Ljava/lang/CharSequence;

.field private s:Ljava/lang/CharSequence;

.field private t:Landroid/content/res/ColorStateList;

.field private u:Landroid/graphics/PorterDuff$Mode;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:I

.field private z:I

.method constructor <init>(Landroidx/appcompat/view/menu/g;IIIILjava/lang/CharSequence;I)V
  .registers 10
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/16 v0, 4096
  .line 2
    iput v0, p0, Landroidx/appcompat/view/menu/i;->i:I
  .line 3
    iput v0, p0, Landroidx/appcompat/view/menu/i;->k:I
    const/4 v0, 0
  .line 4
    iput v0, p0, Landroidx/appcompat/view/menu/i;->m:I
    const/4 v1, 0
  .line 5
    iput-object v1, p0, Landroidx/appcompat/view/menu/i;->t:Landroid/content/res/ColorStateList;
  .line 6
    iput-object v1, p0, Landroidx/appcompat/view/menu/i;->u:Landroid/graphics/PorterDuff$Mode;
  .line 7
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/i;->v:Z
  .line 8
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/i;->w:Z
  .line 9
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/i;->x:Z
    const/16 v1, 16
  .line 10
    iput v1, p0, Landroidx/appcompat/view/menu/i;->y:I
  .line 11
    iput v0, p0, Landroidx/appcompat/view/menu/i;->z:I
  .line 12
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/i;->D:Z
  .line 13
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
  .line 14
    iput p3, p0, Landroidx/appcompat/view/menu/i;->a:I
  .line 15
    iput p2, p0, Landroidx/appcompat/view/menu/i;->b:I
  .line 16
    iput p4, p0, Landroidx/appcompat/view/menu/i;->c:I
  .line 17
    iput p5, p0, Landroidx/appcompat/view/menu/i;->d:I
  .line 18
    iput-object p6, p0, Landroidx/appcompat/view/menu/i;->e:Ljava/lang/CharSequence;
  .line 19
    iput p7, p0, Landroidx/appcompat/view/menu/i;->z:I
    return-void
.end method

.method private static d(Ljava/lang/StringBuilder;IILjava/lang/String;)V
  .registers 4
    and-int/2addr p1, p2
    if-ne p1, p2, :L0
  .line 1
    invoke-virtual { p0, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L0
    return-void
.end method

.method private e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
  .registers 3
    if-eqz p1, :L3
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/i;->x:Z
    if-eqz v0, :L3
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/i;->v:Z
    if-nez v0, :L0
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/i;->w:Z
    if-eqz v0, :L3
  :L0
  .line 2
    invoke-static { p1 }, Landroidx/core/graphics/drawable/a;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    move-result-object p1
  .line 3
    invoke-virtual { p1 }, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
    move-result-object p1
  .line 4
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/i;->v:Z
    if-eqz v0, :L1
  .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->t:Landroid/content/res/ColorStateList;
    invoke-static { p1, v0 }, Landroidx/core/graphics/drawable/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
  :L1
  .line 6
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/i;->w:Z
    if-eqz v0, :L2
  .line 7
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->u:Landroid/graphics/PorterDuff$Mode;
    invoke-static { p1, v0 }, Landroidx/core/graphics/drawable/a;->p(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
  :L2
    const/4 v0, 0
  .line 8
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/i;->x:Z
  :L3
    return-object p1
.end method

.method A()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/g;->H()Z
    move-result v0
    if-eqz v0, :L0
    invoke-virtual { p0 }, Landroidx/appcompat/view/menu/i;->g()C
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public B()Z
  .registers 3
  .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/i;->z:I
    const/4 v1, 4
    and-int/2addr v0, v1
    if-ne v0, v1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public a(Landroidx/core/view/b;)Lc/g/e/a/b;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->B:Landroidx/core/view/b;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/core/view/b;->h()V
  :L0
    const/4 v0, 0
  .line 3
    iput-object v0, p0, Landroidx/appcompat/view/menu/i;->A:Landroid/view/View;
  .line 4
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->B:Landroidx/core/view/b;
  .line 5
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    const/4 v0, 1
    invoke-virtual { p1, v0 }, Landroidx/appcompat/view/menu/g;->K(Z)V
  .line 6
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->B:Landroidx/core/view/b;
    if-eqz p1, :L1
  .line 7
    new-instance v0, Landroidx/appcompat/view/menu/i$a;
    invoke-direct { v0, p0 }, Landroidx/appcompat/view/menu/i$a;-><init>(Landroidx/appcompat/view/menu/i;)V
    invoke-virtual { p1, v0 }, Landroidx/core/view/b;->j(Landroidx/core/view/b$b;)V
  :L1
    return-object p0
.end method

.method public b()Landroidx/core/view/b;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->B:Landroidx/core/view/b;
    return-object v0
.end method

.method public c()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    invoke-virtual { v0, p0 }, Landroidx/appcompat/view/menu/g;->I(Landroidx/appcompat/view/menu/i;)V
    return-void
.end method

.method public collapseActionView()Z
  .registers 3
  .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/i;->z:I
    and-int/lit8 v0, v0, 8
    const/4 v1, 0
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->A:Landroid/view/View;
    if-nez v0, :L1
    const/4 v0, 1
    return v0
  :L1
  .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->C:Landroid/view/MenuItem$OnActionExpandListener;
    if-eqz v0, :L3
  .line 4
    invoke-interface { v0, p0 }, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    move-result v0
    if-eqz v0, :L2
    goto :L3
  :L2
    return v1
  :L3
  .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    invoke-virtual { v0, p0 }, Landroidx/appcompat/view/menu/g;->f(Landroidx/appcompat/view/menu/i;)Z
    move-result v0
    return v0
.end method

.method public expandActionView()Z
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/view/menu/i;->j()Z
    move-result v0
    const/4 v1, 0
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->C:Landroid/view/MenuItem$OnActionExpandListener;
    if-eqz v0, :L2
  .line 3
    invoke-interface { v0, p0 }, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    move-result v0
    if-eqz v0, :L1
    goto :L2
  :L1
    return v1
  :L2
  .line 4
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    invoke-virtual { v0, p0 }, Landroidx/appcompat/view/menu/g;->k(Landroidx/appcompat/view/menu/i;)Z
    move-result v0
    return v0
.end method

.method public f()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/i;->d:I
    return v0
.end method

.method g()C
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/g;->G()Z
    move-result v0
    if-eqz v0, :L0
    iget-char v0, p0, Landroidx/appcompat/view/menu/i;->j:C
    goto :L1
  :L0
    iget-char v0, p0, Landroidx/appcompat/view/menu/i;->h:C
  :L1
    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;
    const-string v1, "This is not supported, use MenuItemCompat.getActionProvider()"
    invoke-direct { v0, v1 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public getActionView()Landroid/view/View;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->A:Landroid/view/View;
    if-eqz v0, :L0
    return-object v0
  :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->B:Landroidx/core/view/b;
    if-eqz v0, :L1
  .line 3
    invoke-virtual { v0, p0 }, Landroidx/core/view/b;->d(Landroid/view/MenuItem;)Landroid/view/View;
    move-result-object v0
    iput-object v0, p0, Landroidx/appcompat/view/menu/i;->A:Landroid/view/View;
    return-object v0
  :L1
    const/4 v0, 0
    return-object v0
.end method

.method public getAlphabeticModifiers()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/i;->k:I
    return v0
.end method

.method public getAlphabeticShortcut()C
  .registers 2
  .line 1
    iget-char v0, p0, Landroidx/appcompat/view/menu/i;->j:C
    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->r:Ljava/lang/CharSequence;
    return-object v0
.end method

.method public getGroupId()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/i;->b:I
    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->l:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 2
    invoke-direct { p0, v0 }, Landroidx/appcompat/view/menu/i;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    move-result-object v0
    return-object v0
  :L0
  .line 3
    iget v0, p0, Landroidx/appcompat/view/menu/i;->m:I
    if-eqz v0, :L1
  .line 4
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/g;->u()Landroid/content/Context;
    move-result-object v0
    iget v1, p0, Landroidx/appcompat/view/menu/i;->m:I
    invoke-static { v0, v1 }, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object v0
    const/4 v1, 0
  .line 5
    iput v1, p0, Landroidx/appcompat/view/menu/i;->m:I
  .line 6
    iput-object v0, p0, Landroidx/appcompat/view/menu/i;->l:Landroid/graphics/drawable/Drawable;
  .line 7
    invoke-direct { p0, v0 }, Landroidx/appcompat/view/menu/i;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    move-result-object v0
    return-object v0
  :L1
    const/4 v0, 0
    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->t:Landroid/content/res/ColorStateList;
    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->u:Landroid/graphics/PorterDuff$Mode;
    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->g:Landroid/content/Intent;
    return-object v0
.end method

.method public getItemId()I
  .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
  .end annotation
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/i;->a:I
    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->E:Landroid/view/ContextMenu$ContextMenuInfo;
    return-object v0
.end method

.method public getNumericModifiers()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/i;->i:I
    return v0
.end method

.method public getNumericShortcut()C
  .registers 2
  .line 1
    iget-char v0, p0, Landroidx/appcompat/view/menu/i;->h:C
    return v0
.end method

.method public getOrder()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/i;->c:I
    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->o:Landroidx/appcompat/view/menu/r;
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
  .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->e:Ljava/lang/CharSequence;
    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->f:Ljava/lang/CharSequence;
    if-eqz v0, :L0
    goto :L1
  :L0
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->e:Ljava/lang/CharSequence;
  :L1
  .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 18
    if-ge v1, v2, :L2
    if-eqz v0, :L2
    instance-of v1, v0, Ljava/lang/String;
    if-nez v1, :L2
  .line 3
    invoke-interface { v0 }, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v0
  :L2
    return-object v0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->s:Ljava/lang/CharSequence;
    return-object v0
.end method

.method h()Ljava/lang/String;
  .registers 7
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/view/menu/i;->g()C
    move-result v0
    if-nez v0, :L0
    const-string v0, ""
    return-object v0
  :L0
  .line 2
    iget-object v1, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    invoke-virtual { v1 }, Landroidx/appcompat/view/menu/g;->u()Landroid/content/Context;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v1
  .line 3
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
  .line 4
    iget-object v3, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    invoke-virtual { v3 }, Landroidx/appcompat/view/menu/g;->u()Landroid/content/Context;
    move-result-object v3
    invoke-static { v3 }, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    move-result-object v3
    invoke-virtual { v3 }, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z
    move-result v3
    if-eqz v3, :L1
  .line 5
    sget v3, Lc/a/h;->abc_prepend_shortcut_label:I
    invoke-virtual { v1, v3 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L1
  .line 6
    iget-object v3, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    invoke-virtual { v3 }, Landroidx/appcompat/view/menu/g;->G()Z
    move-result v3
    if-eqz v3, :L2
    iget v3, p0, Landroidx/appcompat/view/menu/i;->k:I
    goto :L3
  :L2
    iget v3, p0, Landroidx/appcompat/view/menu/i;->i:I
  :L3
    const/high16 v4, 1
  .line 7
    sget v5, Lc/a/h;->abc_menu_meta_shortcut_label:I
  .line 8
    invoke-virtual { v1, v5 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v5
  .line 9
    invoke-static { v2, v3, v4, v5 }, Landroidx/appcompat/view/menu/i;->d(Ljava/lang/StringBuilder;IILjava/lang/String;)V
    const/16 v4, 4096
  .line 10
    sget v5, Lc/a/h;->abc_menu_ctrl_shortcut_label:I
  .line 11
    invoke-virtual { v1, v5 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v5
  .line 12
    invoke-static { v2, v3, v4, v5 }, Landroidx/appcompat/view/menu/i;->d(Ljava/lang/StringBuilder;IILjava/lang/String;)V
    const/4 v4, 2
  .line 13
    sget v5, Lc/a/h;->abc_menu_alt_shortcut_label:I
  .line 14
    invoke-virtual { v1, v5 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v5
  .line 15
    invoke-static { v2, v3, v4, v5 }, Landroidx/appcompat/view/menu/i;->d(Ljava/lang/StringBuilder;IILjava/lang/String;)V
    const/4 v4, 1
  .line 16
    sget v5, Lc/a/h;->abc_menu_shift_shortcut_label:I
  .line 17
    invoke-virtual { v1, v5 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v5
  .line 18
    invoke-static { v2, v3, v4, v5 }, Landroidx/appcompat/view/menu/i;->d(Ljava/lang/StringBuilder;IILjava/lang/String;)V
    const/4 v4, 4
  .line 19
    sget v5, Lc/a/h;->abc_menu_sym_shortcut_label:I
  .line 20
    invoke-virtual { v1, v5 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v5
  .line 21
    invoke-static { v2, v3, v4, v5 }, Landroidx/appcompat/view/menu/i;->d(Ljava/lang/StringBuilder;IILjava/lang/String;)V
  .line 22
    sget v4, Lc/a/h;->abc_menu_function_shortcut_label:I
  .line 23
    invoke-virtual { v1, v4 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v4
    const/16 v5, 8
  .line 24
    invoke-static { v2, v3, v5, v4 }, Landroidx/appcompat/view/menu/i;->d(Ljava/lang/StringBuilder;IILjava/lang/String;)V
    if-eq v0, v5, :L6
    const/16 v3, 10
    if-eq v0, v3, :L5
    const/16 v3, 32
    if-eq v0, v3, :L4
  .line 25
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    goto :L7
  :L4
  .line 26
    sget v0, Lc/a/h;->abc_menu_space_shortcut_label:I
    invoke-virtual { v1, v0 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    goto :L7
  :L5
  .line 27
    sget v0, Lc/a/h;->abc_menu_enter_shortcut_label:I
    invoke-virtual { v1, v0 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    goto :L7
  :L6
  .line 28
    sget v0, Lc/a/h;->abc_menu_delete_shortcut_label:I
    invoke-virtual { v1, v0 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L7
  .line 29
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public hasSubMenu()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->o:Landroidx/appcompat/view/menu/r;
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method i(Landroidx/appcompat/view/menu/n$a;)Ljava/lang/CharSequence;
  .registers 2
    if-eqz p1, :L0
  .line 1
    invoke-interface { p1 }, Landroidx/appcompat/view/menu/n$a;->e()Z
    move-result p1
    if-eqz p1, :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/view/menu/i;->getTitleCondensed()Ljava/lang/CharSequence;
    move-result-object p1
    goto :L1
  :L0
  .line 3
    invoke-virtual { p0 }, Landroidx/appcompat/view/menu/i;->getTitle()Ljava/lang/CharSequence;
    move-result-object p1
  :L1
    return-object p1
.end method

.method public isActionViewExpanded()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/i;->D:Z
    return v0
.end method

.method public isCheckable()Z
  .registers 3
  .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/i;->y:I
    const/4 v1, 1
    and-int/2addr v0, v1
    if-ne v0, v1, :L0
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    return v1
.end method

.method public isChecked()Z
  .registers 3
  .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/i;->y:I
    const/4 v1, 2
    and-int/2addr v0, v1
    if-ne v0, v1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public isEnabled()Z
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/i;->y:I
    and-int/lit8 v0, v0, 16
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public isVisible()Z
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->B:Landroidx/core/view/b;
    const/4 v1, 1
    const/4 v2, 0
    if-eqz v0, :L2
    invoke-virtual { v0 }, Landroidx/core/view/b;->g()Z
    move-result v0
    if-eqz v0, :L2
  .line 2
    iget v0, p0, Landroidx/appcompat/view/menu/i;->y:I
    and-int/lit8 v0, v0, 8
    if-nez v0, :L0
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->B:Landroidx/core/view/b;
    invoke-virtual { v0 }, Landroidx/core/view/b;->b()Z
    move-result v0
    if-eqz v0, :L0
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    return v1
  :L2
  .line 3
    iget v0, p0, Landroidx/appcompat/view/menu/i;->y:I
    and-int/lit8 v0, v0, 8
    if-nez v0, :L3
    goto :L4
  :L3
    const/4 v1, 0
  :L4
    return v1
.end method

.method public j()Z
  .registers 3
  .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/i;->z:I
    and-int/lit8 v0, v0, 8
    const/4 v1, 0
    if-eqz v0, :L1
  .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->A:Landroid/view/View;
    if-nez v0, :L0
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->B:Landroidx/core/view/b;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0, p0 }, Landroidx/core/view/b;->d(Landroid/view/MenuItem;)Landroid/view/View;
    move-result-object v0
    iput-object v0, p0, Landroidx/appcompat/view/menu/i;->A:Landroid/view/View;
  :L0
  .line 4
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->A:Landroid/view/View;
    if-eqz v0, :L1
    const/4 v1, 1
  :L1
    return v1
.end method

.method public k()Z
  .catch Landroid/content/ActivityNotFoundException; { :L3 .. :L4 } :L5
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->q:Landroid/view/MenuItem$OnMenuItemClickListener;
    const/4 v1, 1
    if-eqz v0, :L0
    invoke-interface { v0, p0 }, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z
    move-result v0
    if-eqz v0, :L0
    return v1
  :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    invoke-virtual { v0, v0, p0 }, Landroidx/appcompat/view/menu/g;->h(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z
    move-result v0
    if-eqz v0, :L1
    return v1
  :L1
  .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->p:Ljava/lang/Runnable;
    if-eqz v0, :L2
  .line 4
    invoke-interface { v0 }, Ljava/lang/Runnable;->run()V
    return v1
  :L2
  .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->g:Landroid/content/Intent;
    if-eqz v0, :L6
  :L3
  .line 6
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/g;->u()Landroid/content/Context;
    move-result-object v0
    iget-object v2, p0, Landroidx/appcompat/view/menu/i;->g:Landroid/content/Intent;
    invoke-virtual { v0, v2 }, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
  :L4
    return v1
  :L5
    nop
  :L6
  .line 7
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->B:Landroidx/core/view/b;
    if-eqz v0, :L7
    invoke-virtual { v0 }, Landroidx/core/view/b;->e()Z
    move-result v0
    if-eqz v0, :L7
    return v1
  :L7
    const/4 v0, 0
    return v0
.end method

.method public l()Z
  .registers 3
  .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/i;->y:I
    const/16 v1, 32
    and-int/2addr v0, v1
    if-ne v0, v1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public m()Z
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/i;->y:I
    and-int/lit8 v0, v0, 4
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public n()Z
  .registers 3
  .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/i;->z:I
    const/4 v1, 1
    and-int/2addr v0, v1
    if-ne v0, v1, :L0
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    return v1
.end method

.method public o()Z
  .registers 3
  .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/i;->z:I
    const/4 v1, 2
    and-int/2addr v0, v1
    if-ne v0, v1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public p(I)Lc/g/e/a/b;
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/g;->u()Landroid/content/Context;
    move-result-object v0
  .line 2
    invoke-static { v0 }, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    move-result-object v1
  .line 3
    new-instance v2, Landroid/widget/LinearLayout;
    invoke-direct { v2, v0 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
    const/4 v0, 0
    invoke-virtual { v1, p1, v2, v0 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/view/menu/i;->q(Landroid/view/View;)Lc/g/e/a/b;
    return-object p0
.end method

.method public q(Landroid/view/View;)Lc/g/e/a/b;
  .registers 4
  .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->A:Landroid/view/View;
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Landroidx/appcompat/view/menu/i;->B:Landroidx/core/view/b;
    if-eqz p1, :L0
  .line 3
    invoke-virtual { p1 }, Landroid/view/View;->getId()I
    move-result v0
    const/4 v1, -1
    if-ne v0, v1, :L0
    iget v0, p0, Landroidx/appcompat/view/menu/i;->a:I
    if-lez v0, :L0
  .line 4
    invoke-virtual { p1, v0 }, Landroid/view/View;->setId(I)V
  :L0
  .line 5
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    invoke-virtual { p1, p0 }, Landroidx/appcompat/view/menu/g;->I(Landroidx/appcompat/view/menu/i;)V
    return-object p0
.end method

.method public r(Z)V
  .registers 3
  .line 1
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/i;->D:Z
  .line 2
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    const/4 v0, 0
    invoke-virtual { p1, v0 }, Landroidx/appcompat/view/menu/g;->K(Z)V
    return-void
.end method

.method s(Z)V
  .registers 5
  .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/i;->y:I
    and-int/lit8 v1, v0, -3
    const/4 v2, 0
    if-eqz p1, :L0
    const/4 p1, 2
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    or-int/2addr p1, v1
  .line 2
    iput p1, p0, Landroidx/appcompat/view/menu/i;->y:I
    if-eq v0, p1, :L2
  .line 3
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    invoke-virtual { p1, v2 }, Landroidx/appcompat/view/menu/g;->K(Z)V
  :L2
    return-void
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
  .registers 3
  .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    const-string v0, "This is not supported, use MenuItemCompat.setActionProvider()"
    invoke-direct { p1, v0 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public bridge synthetic setActionView(I)Landroid/view/MenuItem;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/view/menu/i;->p(I)Lc/g/e/a/b;
    return-object p0
.end method

.method public bridge synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
  .registers 2
  .line 2
    invoke-virtual { p0, p1 }, Landroidx/appcompat/view/menu/i;->q(Landroid/view/View;)Lc/g/e/a/b;
    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
  .registers 3
  .line 1
    iget-char v0, p0, Landroidx/appcompat/view/menu/i;->j:C
    if-ne v0, p1, :L0
    return-object p0
  :L0
  .line 2
    invoke-static { p1 }, Ljava/lang/Character;->toLowerCase(C)C
    move-result p1
    iput-char p1, p0, Landroidx/appcompat/view/menu/i;->j:C
  .line 3
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    const/4 v0, 0
    invoke-virtual { p1, v0 }, Landroidx/appcompat/view/menu/g;->K(Z)V
    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
  .registers 4
  .line 4
    iget-char v0, p0, Landroidx/appcompat/view/menu/i;->j:C
    if-ne v0, p1, :L0
    iget v0, p0, Landroidx/appcompat/view/menu/i;->k:I
    if-ne v0, p2, :L0
    return-object p0
  :L0
  .line 5
    invoke-static { p1 }, Ljava/lang/Character;->toLowerCase(C)C
    move-result p1
    iput-char p1, p0, Landroidx/appcompat/view/menu/i;->j:C
  .line 6
    invoke-static { p2 }, Landroid/view/KeyEvent;->normalizeMetaState(I)I
    move-result p1
    iput p1, p0, Landroidx/appcompat/view/menu/i;->k:I
  .line 7
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    const/4 p2, 0
    invoke-virtual { p1, p2 }, Landroidx/appcompat/view/menu/g;->K(Z)V
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
  .registers 4
  .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/i;->y:I
    and-int/lit8 v1, v0, -2
    or-int/2addr p1, v1
  .line 2
    iput p1, p0, Landroidx/appcompat/view/menu/i;->y:I
    if-eq v0, p1, :L0
  .line 3
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    const/4 v0, 0
    invoke-virtual { p1, v0 }, Landroidx/appcompat/view/menu/g;->K(Z)V
  :L0
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
  .registers 3
  .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/i;->y:I
    and-int/lit8 v0, v0, 4
    if-eqz v0, :L0
  .line 2
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    invoke-virtual { p1, p0 }, Landroidx/appcompat/view/menu/g;->T(Landroid/view/MenuItem;)V
    goto :L1
  :L0
  .line 3
    invoke-virtual { p0, p1 }, Landroidx/appcompat/view/menu/i;->s(Z)V
  :L1
    return-object p0
.end method

.method public bridge synthetic setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/view/menu/i;->setContentDescription(Ljava/lang/CharSequence;)Lc/g/e/a/b;
    return-object p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lc/g/e/a/b;
  .registers 3
  .line 2
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->r:Ljava/lang/CharSequence;
  .line 3
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    const/4 v0, 0
    invoke-virtual { p1, v0 }, Landroidx/appcompat/view/menu/g;->K(Z)V
    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
  .registers 3
    if-eqz p1, :L0
  .line 1
    iget p1, p0, Landroidx/appcompat/view/menu/i;->y:I
    or-int/lit8 p1, p1, 16
    iput p1, p0, Landroidx/appcompat/view/menu/i;->y:I
    goto :L1
  :L0
  .line 2
    iget p1, p0, Landroidx/appcompat/view/menu/i;->y:I
    and-int/lit8 p1, p1, -17
    iput p1, p0, Landroidx/appcompat/view/menu/i;->y:I
  :L1
  .line 3
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    const/4 v0, 0
    invoke-virtual { p1, v0 }, Landroidx/appcompat/view/menu/g;->K(Z)V
    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
  .registers 3
    const/4 v0, 0
  .line 5
    iput-object v0, p0, Landroidx/appcompat/view/menu/i;->l:Landroid/graphics/drawable/Drawable;
  .line 6
    iput p1, p0, Landroidx/appcompat/view/menu/i;->m:I
    const/4 p1, 1
  .line 7
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/i;->x:Z
  .line 8
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    const/4 v0, 0
    invoke-virtual { p1, v0 }, Landroidx/appcompat/view/menu/g;->K(Z)V
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
  .registers 3
    const/4 v0, 0
  .line 1
    iput v0, p0, Landroidx/appcompat/view/menu/i;->m:I
  .line 2
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->l:Landroid/graphics/drawable/Drawable;
    const/4 p1, 1
  .line 3
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/i;->x:Z
  .line 4
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    invoke-virtual { p1, v0 }, Landroidx/appcompat/view/menu/g;->K(Z)V
    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->t:Landroid/content/res/ColorStateList;
    const/4 p1, 1
  .line 2
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/i;->v:Z
  .line 3
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/i;->x:Z
  .line 4
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    const/4 v0, 0
    invoke-virtual { p1, v0 }, Landroidx/appcompat/view/menu/g;->K(Z)V
    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->u:Landroid/graphics/PorterDuff$Mode;
    const/4 p1, 1
  .line 2
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/i;->w:Z
  .line 3
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/i;->x:Z
  .line 4
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    const/4 v0, 0
    invoke-virtual { p1, v0 }, Landroidx/appcompat/view/menu/g;->K(Z)V
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->g:Landroid/content/Intent;
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
  .registers 3
  .line 1
    iget-char v0, p0, Landroidx/appcompat/view/menu/i;->h:C
    if-ne v0, p1, :L0
    return-object p0
  :L0
  .line 2
    iput-char p1, p0, Landroidx/appcompat/view/menu/i;->h:C
  .line 3
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    const/4 v0, 0
    invoke-virtual { p1, v0 }, Landroidx/appcompat/view/menu/g;->K(Z)V
    return-object p0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
  .registers 4
  .line 4
    iget-char v0, p0, Landroidx/appcompat/view/menu/i;->h:C
    if-ne v0, p1, :L0
    iget v0, p0, Landroidx/appcompat/view/menu/i;->i:I
    if-ne v0, p2, :L0
    return-object p0
  :L0
  .line 5
    iput-char p1, p0, Landroidx/appcompat/view/menu/i;->h:C
  .line 6
    invoke-static { p2 }, Landroid/view/KeyEvent;->normalizeMetaState(I)I
    move-result p1
    iput p1, p0, Landroidx/appcompat/view/menu/i;->i:I
  .line 7
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    const/4 p2, 0
    invoke-virtual { p1, p2 }, Landroidx/appcompat/view/menu/g;->K(Z)V
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->C:Landroid/view/MenuItem$OnActionExpandListener;
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->q:Landroid/view/MenuItem$OnMenuItemClickListener;
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
  .registers 3
  .line 1
    iput-char p1, p0, Landroidx/appcompat/view/menu/i;->h:C
  .line 2
    invoke-static { p2 }, Ljava/lang/Character;->toLowerCase(C)C
    move-result p1
    iput-char p1, p0, Landroidx/appcompat/view/menu/i;->j:C
  .line 3
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    const/4 p2, 0
    invoke-virtual { p1, p2 }, Landroidx/appcompat/view/menu/g;->K(Z)V
    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
  .registers 5
  .line 4
    iput-char p1, p0, Landroidx/appcompat/view/menu/i;->h:C
  .line 5
    invoke-static { p3 }, Landroid/view/KeyEvent;->normalizeMetaState(I)I
    move-result p1
    iput p1, p0, Landroidx/appcompat/view/menu/i;->i:I
  .line 6
    invoke-static { p2 }, Ljava/lang/Character;->toLowerCase(C)C
    move-result p1
    iput-char p1, p0, Landroidx/appcompat/view/menu/i;->j:C
  .line 7
    invoke-static { p4 }, Landroid/view/KeyEvent;->normalizeMetaState(I)I
    move-result p1
    iput p1, p0, Landroidx/appcompat/view/menu/i;->k:I
  .line 8
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    const/4 p2, 0
    invoke-virtual { p1, p2 }, Landroidx/appcompat/view/menu/g;->K(Z)V
    return-object p0
.end method

.method public setShowAsAction(I)V
  .registers 4
    and-int/lit8 v0, p1, 3
    if-eqz v0, :L1
    const/4 v1, 1
    if-eq v0, v1, :L1
    const/4 v1, 2
    if-ne v0, v1, :L0
    goto :L1
  :L0
  .line 1
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 2
    iput p1, p0, Landroidx/appcompat/view/menu/i;->z:I
  .line 3
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    invoke-virtual { p1, p0 }, Landroidx/appcompat/view/menu/g;->I(Landroidx/appcompat/view/menu/i;)V
    return-void
.end method

.method public bridge synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/view/menu/i;->w(I)Lc/g/e/a/b;
    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
  .registers 3
  .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/g;->u()Landroid/content/Context;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/view/menu/i;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
  .registers 4
  .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->e:Ljava/lang/CharSequence;
  .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroidx/appcompat/view/menu/g;->K(Z)V
  .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->o:Landroidx/appcompat/view/menu/r;
    if-eqz v0, :L0
  .line 4
    invoke-virtual { v0, p1 }, Landroidx/appcompat/view/menu/r;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
  :L0
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->f:Ljava/lang/CharSequence;
  .line 2
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    const/4 v0, 0
    invoke-virtual { p1, v0 }, Landroidx/appcompat/view/menu/g;->K(Z)V
    return-object p0
.end method

.method public bridge synthetic setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/view/menu/i;->setTooltipText(Ljava/lang/CharSequence;)Lc/g/e/a/b;
    return-object p0
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Lc/g/e/a/b;
  .registers 3
  .line 2
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->s:Ljava/lang/CharSequence;
  .line 3
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    const/4 v0, 0
    invoke-virtual { p1, v0 }, Landroidx/appcompat/view/menu/g;->K(Z)V
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/view/menu/i;->y(Z)Z
    move-result p1
    if-eqz p1, :L0
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    invoke-virtual { p1, p0 }, Landroidx/appcompat/view/menu/g;->J(Landroidx/appcompat/view/menu/i;)V
  :L0
    return-object p0
.end method

.method public t(Z)V
  .registers 3
  .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/i;->y:I
    and-int/lit8 v0, v0, -5
    if-eqz p1, :L0
    const/4 p1, 4
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    or-int/2addr p1, v0
    iput p1, p0, Landroidx/appcompat/view/menu/i;->y:I
    return-void
.end method

.method public toString()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->e:Ljava/lang/CharSequence;
    if-eqz v0, :L0
    invoke-interface { v0 }, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public u(Z)V
  .registers 2
    if-eqz p1, :L0
  .line 1
    iget p1, p0, Landroidx/appcompat/view/menu/i;->y:I
    or-int/lit8 p1, p1, 32
    iput p1, p0, Landroidx/appcompat/view/menu/i;->y:I
    goto :L1
  :L0
  .line 2
    iget p1, p0, Landroidx/appcompat/view/menu/i;->y:I
    and-int/lit8 p1, p1, -33
    iput p1, p0, Landroidx/appcompat/view/menu/i;->y:I
  :L1
    return-void
.end method

.method v(Landroid/view/ContextMenu$ContextMenuInfo;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->E:Landroid/view/ContextMenu$ContextMenuInfo;
    return-void
.end method

.method public w(I)Lc/g/e/a/b;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/view/menu/i;->setShowAsAction(I)V
    return-object p0
.end method

.method public x(Landroidx/appcompat/view/menu/r;)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->o:Landroidx/appcompat/view/menu/r;
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/view/menu/i;->getTitle()Ljava/lang/CharSequence;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroidx/appcompat/view/menu/r;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    return-void
.end method

.method y(Z)Z
  .registers 5
  .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/i;->y:I
    and-int/lit8 v1, v0, -9
    const/4 v2, 0
    if-eqz p1, :L0
    const/4 p1, 0
    goto :L1
  :L0
    const/16 p1, 8
  :L1
    or-int/2addr p1, v1
  .line 2
    iput p1, p0, Landroidx/appcompat/view/menu/i;->y:I
    if-eq v0, p1, :L2
    const/4 v2, 1
  :L2
    return v2
.end method

.method public z()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/g;
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/g;->A()Z
    move-result v0
    return v0
.end method
