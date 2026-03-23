.class public Landroidx/appcompat/widget/g;
.super Landroid/widget/CheckedTextView;
.source "SourceFile"

.field private final static c:[I

.field private final b:Landroidx/appcompat/widget/w;

.method static constructor <clinit>()V
  .registers 3
    const/4 v0, 1
    new-array v0, v0, [I
    const/4 v1, 0
    const v2, 16843016
    aput v2, v0, v1
  .line 1
    sput-object v0, Landroidx/appcompat/widget/g;->c:[I
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
    const v0, 16843720
  .line 1
    invoke-direct { p0, p1, p2, v0 }, Landroidx/appcompat/widget/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 6
  .line 2
    invoke-static { p1 }, Landroidx/appcompat/widget/r0;->b(Landroid/content/Context;)Landroid/content/Context;
    move-result-object p1
    invoke-direct { p0, p1, p2, p3 }, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 3
    invoke-virtual { p0 }, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;
    move-result-object p1
    invoke-static { p0, p1 }, Landroidx/appcompat/widget/p0;->a(Landroid/view/View;Landroid/content/Context;)V
  .line 4
    new-instance p1, Landroidx/appcompat/widget/w;
    invoke-direct { p1, p0 }, Landroidx/appcompat/widget/w;-><init>(Landroid/widget/TextView;)V
    iput-object p1, p0, Landroidx/appcompat/widget/g;->b:Landroidx/appcompat/widget/w;
  .line 5
    invoke-virtual { p1, p2, p3 }, Landroidx/appcompat/widget/w;->m(Landroid/util/AttributeSet;I)V
  .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/g;->b:Landroidx/appcompat/widget/w;
    invoke-virtual { p1 }, Landroidx/appcompat/widget/w;->b()V
  .line 7
    invoke-virtual { p0 }, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;
    move-result-object p1
    sget-object v0, Landroidx/appcompat/widget/g;->c:[I
    const/4 v1, 0
    invoke-static { p1, p2, v0, p3, v1 }, Landroidx/appcompat/widget/u0;->v(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/u0;
    move-result-object p1
  .line 8
    invoke-virtual { p1, v1 }, Landroidx/appcompat/widget/u0;->g(I)Landroid/graphics/drawable/Drawable;
    move-result-object p2
    invoke-virtual { p0, p2 }, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
  .line 9
    invoke-virtual { p1 }, Landroidx/appcompat/widget/u0;->w()V
    return-void
.end method

.method protected drawableStateChanged()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/widget/CheckedTextView;->drawableStateChanged()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/g;->b:Landroidx/appcompat/widget/w;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0 }, Landroidx/appcompat/widget/w;->b()V
  :L0
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/CheckedTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    move-result-object v0
    invoke-static { v0, p1, p0 }, Landroidx/appcompat/widget/k;->a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;
    return-object v0
.end method

.method public setCheckMarkDrawable(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0, p1 }, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
  .registers 2
  .line 1
    invoke-static { p0, p1 }, Landroidx/core/widget/i;->p(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    move-result-object p1
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/CheckedTextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
  .registers 4
  .line 1
    invoke-super { p0, p1, p2 }, Landroid/widget/CheckedTextView;->setTextAppearance(Landroid/content/Context;I)V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/g;->b:Landroidx/appcompat/widget/w;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0, p1, p2 }, Landroidx/appcompat/widget/w;->q(Landroid/content/Context;I)V
  :L0
    return-void
.end method
