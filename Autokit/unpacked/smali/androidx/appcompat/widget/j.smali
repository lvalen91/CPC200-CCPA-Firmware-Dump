.class public Landroidx/appcompat/widget/j;
.super Landroid/widget/EditText;
.implements Landroidx/core/view/u;
.implements Landroidx/core/view/s;
.source "SourceFile"

.field private final b:Landroidx/appcompat/widget/e;

.field private final c:Landroidx/appcompat/widget/w;

.field private final d:Landroidx/appcompat/widget/v;

.field private final e:Landroidx/core/widget/j;

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
  .line 1
    sget v0, Lc/a/a;->editTextStyle:I
    invoke-direct { p0, p1, p2, v0 }, Landroidx/appcompat/widget/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 4
  .line 2
    invoke-static { p1 }, Landroidx/appcompat/widget/r0;->b(Landroid/content/Context;)Landroid/content/Context;
    move-result-object p1
    invoke-direct { p0, p1, p2, p3 }, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 3
    invoke-virtual { p0 }, Landroid/widget/EditText;->getContext()Landroid/content/Context;
    move-result-object p1
    invoke-static { p0, p1 }, Landroidx/appcompat/widget/p0;->a(Landroid/view/View;Landroid/content/Context;)V
  .line 4
    new-instance p1, Landroidx/appcompat/widget/e;
    invoke-direct { p1, p0 }, Landroidx/appcompat/widget/e;-><init>(Landroid/view/View;)V
    iput-object p1, p0, Landroidx/appcompat/widget/j;->b:Landroidx/appcompat/widget/e;
  .line 5
    invoke-virtual { p1, p2, p3 }, Landroidx/appcompat/widget/e;->e(Landroid/util/AttributeSet;I)V
  .line 6
    new-instance p1, Landroidx/appcompat/widget/w;
    invoke-direct { p1, p0 }, Landroidx/appcompat/widget/w;-><init>(Landroid/widget/TextView;)V
    iput-object p1, p0, Landroidx/appcompat/widget/j;->c:Landroidx/appcompat/widget/w;
  .line 7
    invoke-virtual { p1, p2, p3 }, Landroidx/appcompat/widget/w;->m(Landroid/util/AttributeSet;I)V
  .line 8
    iget-object p1, p0, Landroidx/appcompat/widget/j;->c:Landroidx/appcompat/widget/w;
    invoke-virtual { p1 }, Landroidx/appcompat/widget/w;->b()V
  .line 9
    new-instance p1, Landroidx/appcompat/widget/v;
    invoke-direct { p1, p0 }, Landroidx/appcompat/widget/v;-><init>(Landroid/widget/TextView;)V
    iput-object p1, p0, Landroidx/appcompat/widget/j;->d:Landroidx/appcompat/widget/v;
  .line 10
    new-instance p1, Landroidx/core/widget/j;
    invoke-direct { p1 }, Landroidx/core/widget/j;-><init>()V
    iput-object p1, p0, Landroidx/appcompat/widget/j;->e:Landroidx/core/widget/j;
    return-void
.end method

.method public a(Landroidx/core/view/c;)Landroidx/core/view/c;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j;->e:Landroidx/core/widget/j;
    invoke-virtual { v0, p0, p1 }, Landroidx/core/widget/j;->a(Landroid/view/View;Landroidx/core/view/c;)Landroidx/core/view/c;
    move-result-object p1
    return-object p1
.end method

.method protected drawableStateChanged()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/widget/EditText;->drawableStateChanged()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/j;->b:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0 }, Landroidx/appcompat/widget/e;->b()V
  :L0
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/j;->c:Landroidx/appcompat/widget/w;
    if-eqz v0, :L1
  .line 5
    invoke-virtual { v0 }, Landroidx/appcompat/widget/w;->b()V
  :L1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j;->b:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/appcompat/widget/e;->c()Landroid/content/res/ColorStateList;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j;->b:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/appcompat/widget/e;->d()Landroid/graphics/PorterDuff$Mode;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public getText()Landroid/text/Editable;
  .registers 3
  .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 28
    if-lt v0, v1, :L0
  .line 3
    invoke-super { p0 }, Landroid/widget/EditText;->getText()Landroid/text/Editable;
    move-result-object v0
    return-object v0
  :L0
  .line 4
    invoke-super { p0 }, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;
    move-result-object v0
    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/j;->getText()Landroid/text/Editable;
    move-result-object v0
    return-object v0
.end method

.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 28
    if-ge v0, v1, :L1
    iget-object v0, p0, Landroidx/appcompat/widget/j;->d:Landroidx/appcompat/widget/v;
    if-nez v0, :L0
    goto :L1
  :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/appcompat/widget/v;->a()Landroid/view/textclassifier/TextClassifier;
    move-result-object v0
    return-object v0
  :L1
  .line 3
    invoke-super { p0 }, Landroid/widget/EditText;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    move-result-object v0
    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
  .registers 4
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    move-result-object v0
  .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/j;->c:Landroidx/appcompat/widget/w;
    invoke-virtual { v1, p0, v0, p1 }, Landroidx/appcompat/widget/w;->r(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
  .line 3
    invoke-static { v0, p1, p0 }, Landroidx/appcompat/widget/k;->a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;
  .line 4
    invoke-static { p0 }, Landroidx/core/view/v;->F(Landroid/view/View;)[Ljava/lang/String;
    move-result-object v1
    if-eqz v0, :L0
    if-eqz v1, :L0
  .line 5
    invoke-static { p1, v1 }, Landroidx/core/view/f0/a;->d(Landroid/view/inputmethod/EditorInfo;[Ljava/lang/String;)V
  .line 6
    invoke-static { p0 }, Landroidx/appcompat/widget/s;->a(Landroid/view/View;)Landroidx/core/view/f0/b$c;
    move-result-object v1
  .line 7
    invoke-static { v0, p1, v1 }, Landroidx/core/view/f0/b;->a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/f0/b$c;)Landroid/view/inputmethod/InputConnection;
    move-result-object v0
  :L0
    return-object v0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
  .registers 3
  .line 1
    invoke-static { p0, p1 }, Landroidx/appcompat/widget/s;->b(Landroid/view/View;Landroid/view/DragEvent;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 p1, 1
    return p1
  :L0
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/EditText;->onDragEvent(Landroid/view/DragEvent;)Z
    move-result p1
    return p1
.end method

.method public onTextContextMenuItem(I)Z
  .registers 3
  .line 1
    invoke-static { p0, p1 }, Landroidx/appcompat/widget/s;->c(Landroid/widget/TextView;I)Z
    move-result v0
    if-eqz v0, :L0
    const/4 p1, 1
    return p1
  :L0
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/EditText;->onTextContextMenuItem(I)Z
    move-result p1
    return p1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/j;->b:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/e;->f(Landroid/graphics/drawable/Drawable;)V
  :L0
    return-void
.end method

.method public setBackgroundResource(I)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/EditText;->setBackgroundResource(I)V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/j;->b:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/e;->g(I)V
  :L0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
  .registers 2
  .line 1
    invoke-static { p0, p1 }, Landroidx/core/widget/i;->p(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    move-result-object p1
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j;->b:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/e;->i(Landroid/content/res/ColorStateList;)V
  :L0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j;->b:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/e;->j(Landroid/graphics/PorterDuff$Mode;)V
  :L0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
  .registers 4
  .line 1
    invoke-super { p0, p1, p2 }, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/j;->c:Landroidx/appcompat/widget/w;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0, p1, p2 }, Landroidx/appcompat/widget/w;->q(Landroid/content/Context;I)V
  :L0
    return-void
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 28
    if-ge v0, v1, :L1
    iget-object v0, p0, Landroidx/appcompat/widget/j;->d:Landroidx/appcompat/widget/v;
    if-nez v0, :L0
    goto :L1
  :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/v;->b(Landroid/view/textclassifier/TextClassifier;)V
    return-void
  :L1
  .line 3
    invoke-super { p0, p1 }, Landroid/widget/EditText;->setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    return-void
.end method
