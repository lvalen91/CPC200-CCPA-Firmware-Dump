.class public Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
.super Landroidx/appcompat/widget/d;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/SearchView;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "SearchAutoComplete"
.end annotation

.field private e:I

.field private f:Landroidx/appcompat/widget/SearchView;

.field private g:Z

.field final h:Ljava/lang/Runnable;

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
  .line 1
    sget v0, Lc/a/a;->autoCompleteTextViewStyle:I
    invoke-direct { p0, p1, p2, v0 }, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 4
  .line 2
    invoke-direct { p0, p1, p2, p3 }, Landroidx/appcompat/widget/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 3
    new-instance p1, Landroidx/appcompat/widget/SearchView$SearchAutoComplete$a;
    invoke-direct { p1, p0 }, Landroidx/appcompat/widget/SearchView$SearchAutoComplete$a;-><init>(Landroidx/appcompat/widget/SearchView$SearchAutoComplete;)V
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->h:Ljava/lang/Runnable;
  .line 4
    invoke-virtual { p0 }, Landroid/widget/AutoCompleteTextView;->getThreshold()I
    move-result p1
    iput p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->e:I
    return-void
.end method

.method private getSearchViewTextMinWidthDp()I
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroid/widget/AutoCompleteTextView;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
    move-result-object v0
  .line 2
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I
  .line 3
    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I
    const/16 v3, 960
    if-lt v1, v3, :L0
    const/16 v3, 720
    if-lt v2, v3, :L0
  .line 4
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I
    const/4 v3, 2
    if-ne v0, v3, :L0
    const/16 v0, 256
    return v0
  :L0
    const/16 v0, 600
    if-ge v1, v0, :L2
    const/16 v0, 640
    if-lt v1, v0, :L1
    const/16 v0, 480
    if-lt v2, v0, :L1
    goto :L2
  :L1
    const/16 v0, 160
    return v0
  :L2
    const/16 v0, 192
    return v0
.end method

.method a()V
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 29
    if-lt v0, v1, :L0
    const/4 v0, 1
  .line 2
    invoke-virtual { p0, v0 }, Landroid/widget/AutoCompleteTextView;->setInputMethodMode(I)V
  .line 3
    invoke-virtual { p0 }, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->enoughToFilter()Z
    move-result v0
    if-eqz v0, :L1
  .line 4
    invoke-virtual { p0 }, Landroid/widget/AutoCompleteTextView;->showDropDown()V
    goto :L1
  :L0
  .line 5
    sget-object v0, Landroidx/appcompat/widget/SearchView;->r0:Landroidx/appcompat/widget/SearchView$n;
    invoke-virtual { v0, p0 }, Landroidx/appcompat/widget/SearchView$n;->c(Landroid/widget/AutoCompleteTextView;)V
  :L1
    return-void
.end method

.method b()Z
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;
    move-result-object v0
    invoke-static { v0 }, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I
    move-result v0
    if-nez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method c()V
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->g:Z
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;
    move-result-object v0
    const-string v1, "input_method"
    invoke-virtual { v0, v1 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0
  .line 3
    invoke-virtual { v0, p0, v1 }, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
  .line 4
    iput-boolean v1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->g:Z
  :L0
    return-void
.end method

.method public enoughToFilter()Z
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->e:I
    if-lez v0, :L1
    invoke-super { p0 }, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z
    move-result v0
    if-eqz v0, :L0
    goto :L1
  :L0
    const/4 v0, 0
    goto :L2
  :L1
    const/4 v0, 1
  :L2
    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroidx/appcompat/widget/d;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    move-result-object p1
  .line 2
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->g:Z
    if-eqz v0, :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->h:Ljava/lang/Runnable;
    invoke-virtual { p0, v0 }, Landroid/widget/AutoCompleteTextView;->removeCallbacks(Ljava/lang/Runnable;)Z
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->h:Ljava/lang/Runnable;
    invoke-virtual { p0, v0 }, Landroid/widget/AutoCompleteTextView;->post(Ljava/lang/Runnable;)Z
  :L0
    return-object p1
.end method

.method protected onFinishInflate()V
  .registers 4
  .line 1
    invoke-super { p0 }, Landroid/widget/AutoCompleteTextView;->onFinishInflate()V
  .line 2
    invoke-virtual { p0 }, Landroid/widget/AutoCompleteTextView;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v0
  .line 3
    invoke-direct { p0 }, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getSearchViewTextMinWidthDp()I
    move-result v1
    int-to-float v1, v1
    const/4 v2, 1
  .line 4
    invoke-static { v2, v1, v0 }, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
    move-result v0
    float-to-int v0, v0
    invoke-virtual { p0, v0 }, Landroid/widget/AutoCompleteTextView;->setMinWidth(I)V
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
  .registers 4
  .line 1
    invoke-super { p0, p1, p2, p3 }, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V
  .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->f:Landroidx/appcompat/widget/SearchView;
    invoke-virtual { p1 }, Landroidx/appcompat/widget/SearchView;->Z()V
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
  .registers 5
    const/4 v0, 4
    if-ne p1, v0, :L3
  .line 1
    invoke-virtual { p2 }, Landroid/view/KeyEvent;->getAction()I
    move-result v0
    const/4 v1, 1
    if-nez v0, :L1
    invoke-virtual { p2 }, Landroid/view/KeyEvent;->getRepeatCount()I
    move-result v0
    if-nez v0, :L1
  .line 2
    invoke-virtual { p0 }, Landroid/widget/AutoCompleteTextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;
    move-result-object p1
    if-eqz p1, :L0
  .line 3
    invoke-virtual { p1, p2, p0 }, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V
  :L0
    return v1
  :L1
  .line 4
    invoke-virtual { p2 }, Landroid/view/KeyEvent;->getAction()I
    move-result v0
    if-ne v0, v1, :L3
  .line 5
    invoke-virtual { p0 }, Landroid/widget/AutoCompleteTextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;
    move-result-object v0
    if-eqz v0, :L2
  .line 6
    invoke-virtual { v0, p2 }, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V
  :L2
  .line 7
    invoke-virtual { p2 }, Landroid/view/KeyEvent;->isTracking()Z
    move-result v0
    if-eqz v0, :L3
    invoke-virtual { p2 }, Landroid/view/KeyEvent;->isCanceled()Z
    move-result v0
    if-nez v0, :L3
  .line 8
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->f:Landroidx/appcompat/widget/SearchView;
    invoke-virtual { p1 }, Landroidx/appcompat/widget/SearchView;->clearFocus()V
    const/4 p1, 0
  .line 9
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V
    return v1
  :L3
  .line 10
    invoke-super { p0, p1, p2 }, Landroid/widget/AutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z
    move-result p1
    return p1
.end method

.method public onWindowFocusChanged(Z)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/AutoCompleteTextView;->onWindowFocusChanged(Z)V
    if-eqz p1, :L0
  .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->f:Landroidx/appcompat/widget/SearchView;
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->hasFocus()Z
    move-result p1
    if-eqz p1, :L0
    invoke-virtual { p0 }, Landroid/widget/AutoCompleteTextView;->getVisibility()I
    move-result p1
    if-nez p1, :L0
    const/4 p1, 1
  .line 3
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->g:Z
  .line 4
    invoke-virtual { p0 }, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;
    move-result-object p1
    invoke-static { p1 }, Landroidx/appcompat/widget/SearchView;->M(Landroid/content/Context;)Z
    move-result p1
    if-eqz p1, :L0
  .line 5
    invoke-virtual { p0 }, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->a()V
  :L0
    return-void
.end method

.method public performCompletion()V
  .registers 1
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
  .registers 2
    return-void
.end method

.method setImeVisibility(Z)V
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;
    move-result-object v0
    const-string v1, "input_method"
    invoke-virtual { v0, v1 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0
    if-nez p1, :L0
  .line 2
    iput-boolean v1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->g:Z
  .line 3
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->h:Ljava/lang/Runnable;
    invoke-virtual { p0, p1 }, Landroid/widget/AutoCompleteTextView;->removeCallbacks(Ljava/lang/Runnable;)Z
  .line 4
    invoke-virtual { p0 }, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;
    move-result-object p1
    invoke-virtual { v0, p1, v1 }, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    return-void
  :L0
  .line 5
    invoke-virtual { v0, p0 }, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z
    move-result p1
    if-eqz p1, :L1
  .line 6
    iput-boolean v1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->g:Z
  .line 7
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->h:Ljava/lang/Runnable;
    invoke-virtual { p0, p1 }, Landroid/widget/AutoCompleteTextView;->removeCallbacks(Ljava/lang/Runnable;)Z
  .line 8
    invoke-virtual { v0, p0, v1 }, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    return-void
  :L1
    const/4 p1, 1
  .line 9
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->g:Z
    return-void
.end method

.method setSearchView(Landroidx/appcompat/widget/SearchView;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->f:Landroidx/appcompat/widget/SearchView;
    return-void
.end method

.method public setThreshold(I)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V
  .line 2
    iput p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->e:I
    return-void
.end method
