.class public Landroidx/appcompat/app/AlertController$RecycleListView;
.super Landroid/widget/ListView;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/app/AlertController;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "RecycleListView"
.end annotation

.field private final b:I

.field private final c:I

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
  .line 1
    invoke-direct { p0, p1, p2 }, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .line 2
    sget-object v0, Lc/a/j;->RecycleListView:[I
    invoke-virtual { p1, p2, v0 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object p1
  .line 3
    sget p2, Lc/a/j;->RecycleListView_paddingBottomNoButtons:I
    const/4 v0, -1
    invoke-virtual { p1, p2, v0 }, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
    move-result p2
    iput p2, p0, Landroidx/appcompat/app/AlertController$RecycleListView;->c:I
  .line 4
    sget p2, Lc/a/j;->RecycleListView_paddingTopNoTitle:I
    invoke-virtual { p1, p2, v0 }, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
    move-result p1
    iput p1, p0, Landroidx/appcompat/app/AlertController$RecycleListView;->b:I
    return-void
.end method

.method public a(ZZ)V
  .registers 5
    if-eqz p2, :L0
    if-nez p1, :L5
  :L0
  .line 1
    invoke-virtual { p0 }, Landroid/widget/ListView;->getPaddingLeft()I
    move-result v0
    if-eqz p1, :L1
  .line 2
    invoke-virtual { p0 }, Landroid/widget/ListView;->getPaddingTop()I
    move-result p1
    goto :L2
  :L1
    iget p1, p0, Landroidx/appcompat/app/AlertController$RecycleListView;->b:I
  :L2
  .line 3
    invoke-virtual { p0 }, Landroid/widget/ListView;->getPaddingRight()I
    move-result v1
    if-eqz p2, :L3
  .line 4
    invoke-virtual { p0 }, Landroid/widget/ListView;->getPaddingBottom()I
    move-result p2
    goto :L4
  :L3
    iget p2, p0, Landroidx/appcompat/app/AlertController$RecycleListView;->c:I
  :L4
  .line 5
    invoke-virtual { p0, v0, p1, v1, p2 }, Landroid/widget/ListView;->setPadding(IIII)V
  :L5
    return-void
.end method
