.class public final Landroidx/core/view/t;
.super Ljava/lang/Object;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.source "SourceFile"

.field private final b:Landroid/view/View;

.field private c:Landroid/view/ViewTreeObserver;

.field private final d:Ljava/lang/Runnable;

.method private constructor <init>(Landroid/view/View;Ljava/lang/Runnable;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/core/view/t;->b:Landroid/view/View;
  .line 3
    invoke-virtual { p1 }, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    move-result-object p1
    iput-object p1, p0, Landroidx/core/view/t;->c:Landroid/view/ViewTreeObserver;
  .line 4
    iput-object p2, p0, Landroidx/core/view/t;->d:Ljava/lang/Runnable;
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/t;
  .registers 3
    if-eqz p0, :L1
    if-eqz p1, :L0
  .line 1
    new-instance v0, Landroidx/core/view/t;
    invoke-direct { v0, p0, p1 }, Landroidx/core/view/t;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    move-result-object p1
    invoke-virtual { p1, v0 }, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
  .line 3
    invoke-virtual { p0, v0 }, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    return-object v0
  :L0
  .line 4
    new-instance p0, Ljava/lang/NullPointerException;
    const-string p1, "runnable == null"
    invoke-direct { p0, p1 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p0
  :L1
  .line 5
    new-instance p0, Ljava/lang/NullPointerException;
    const-string p1, "view == null"
    invoke-direct { p0, p1 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p0
.end method

.method public b()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/t;->c:Landroid/view/ViewTreeObserver;
    invoke-virtual { v0 }, Landroid/view/ViewTreeObserver;->isAlive()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/core/view/t;->c:Landroid/view/ViewTreeObserver;
    invoke-virtual { v0, p0 }, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    goto :L1
  :L0
  .line 3
    iget-object v0, p0, Landroidx/core/view/t;->b:Landroid/view/View;
    invoke-virtual { v0 }, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    move-result-object v0
    invoke-virtual { v0, p0 }, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
  :L1
  .line 4
    iget-object v0, p0, Landroidx/core/view/t;->b:Landroid/view/View;
    invoke-virtual { v0, p0 }, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    return-void
.end method

.method public onPreDraw()Z
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/core/view/t;->b()V
  .line 2
    iget-object v0, p0, Landroidx/core/view/t;->d:Ljava/lang/Runnable;
    invoke-interface { v0 }, Ljava/lang/Runnable;->run()V
    const/4 v0, 1
    return v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
  .registers 2
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    move-result-object p1
    iput-object p1, p0, Landroidx/core/view/t;->c:Landroid/view/ViewTreeObserver;
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/core/view/t;->b()V
    return-void
.end method
