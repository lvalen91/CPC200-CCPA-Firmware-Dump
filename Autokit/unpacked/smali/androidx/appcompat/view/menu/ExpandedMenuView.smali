.class public final Landroidx/appcompat/view/menu/ExpandedMenuView;
.super Landroid/widget/ListView;
.implements Landroidx/appcompat/view/menu/g$b;
.implements Landroidx/appcompat/view/menu/n;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.source "SourceFile"

.field private final static d:[I

.field private b:Landroidx/appcompat/view/menu/g;

.field private c:I

.method static constructor <clinit>()V
  .registers 1
    const/4 v0, 2
    new-array v0, v0, [I
  .line 1
    fill-array-data v0, :L0
    sput-object v0, Landroidx/appcompat/view/menu/ExpandedMenuView;->d:[I
    return-void
  :L0
  .array-data 4
    -44t 0t 1t 1t
    41t 1t 1t 1t
  .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
    const v0, 16842868
  .line 1
    invoke-direct { p0, p1, p2, v0 }, Landroidx/appcompat/view/menu/ExpandedMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 6
  .line 2
    invoke-direct { p0, p1, p2 }, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .line 3
    invoke-virtual { p0, p0 }, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
  .line 4
    sget-object v0, Landroidx/appcompat/view/menu/ExpandedMenuView;->d:[I
    const/4 v1, 0
    invoke-static { p1, p2, v0, p3, v1 }, Landroidx/appcompat/widget/u0;->v(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/u0;
    move-result-object p1
  .line 5
    invoke-virtual { p1, v1 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result p2
    if-eqz p2, :L0
  .line 6
    invoke-virtual { p1, v1 }, Landroidx/appcompat/widget/u0;->g(I)Landroid/graphics/drawable/Drawable;
    move-result-object p2
    invoke-virtual { p0, p2 }, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
  :L0
    const/4 p2, 1
  .line 7
    invoke-virtual { p1, p2 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result p3
    if-eqz p3, :L1
  .line 8
    invoke-virtual { p1, p2 }, Landroidx/appcompat/widget/u0;->g(I)Landroid/graphics/drawable/Drawable;
    move-result-object p2
    invoke-virtual { p0, p2 }, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V
  :L1
  .line 9
    invoke-virtual { p1 }, Landroidx/appcompat/widget/u0;->w()V
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/i;)Z
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ExpandedMenuView;->b:Landroidx/appcompat/view/menu/g;
    const/4 v1, 0
    invoke-virtual { v0, p1, v1 }, Landroidx/appcompat/view/menu/g;->L(Landroid/view/MenuItem;I)Z
    move-result p1
    return p1
.end method

.method public b(Landroidx/appcompat/view/menu/g;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/ExpandedMenuView;->b:Landroidx/appcompat/view/menu/g;
    return-void
.end method

.method public getWindowAnimations()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/ExpandedMenuView;->c:I
    return v0
.end method

.method protected onDetachedFromWindow()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/widget/ListView;->onDetachedFromWindow()V
    const/4 v0, 0
  .line 2
    invoke-virtual { p0, v0 }, Landroid/widget/ListView;->setChildrenDrawingCacheEnabled(Z)V
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
  .registers 6
  .line 1
    invoke-virtual { p0 }, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;
    move-result-object p1
    invoke-interface { p1, p3 }, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroidx/appcompat/view/menu/i;
    invoke-virtual { p0, p1 }, Landroidx/appcompat/view/menu/ExpandedMenuView;->a(Landroidx/appcompat/view/menu/i;)Z
    return-void
.end method
