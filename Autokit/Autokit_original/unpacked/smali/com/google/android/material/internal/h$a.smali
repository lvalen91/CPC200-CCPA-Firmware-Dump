.class Lcom/google/android/material/internal/h$a;
.super Ld/c/a/a/x/f;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/google/android/material/internal/h;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcom/google/android/material/internal/h;

.method constructor <init>(Lcom/google/android/material/internal/h;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/h$a;->a:Lcom/google/android/material/internal/h;
    invoke-direct { p0 }, Ld/c/a/a/x/f;-><init>()V
    return-void
.end method

.method public a(I)V
  .registers 3
  .line 1
    iget-object p1, p0, Lcom/google/android/material/internal/h$a;->a:Lcom/google/android/material/internal/h;
    const/4 v0, 1
    invoke-static { p1, v0 }, Lcom/google/android/material/internal/h;->a(Lcom/google/android/material/internal/h;Z)Z
  .line 2
    iget-object p1, p0, Lcom/google/android/material/internal/h$a;->a:Lcom/google/android/material/internal/h;
    invoke-static { p1 }, Lcom/google/android/material/internal/h;->b(Lcom/google/android/material/internal/h;)Ljava/lang/ref/WeakReference;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lcom/google/android/material/internal/h$b;
    if-eqz p1, :L0
  .line 3
    invoke-interface { p1 }, Lcom/google/android/material/internal/h$b;->a()V
  :L0
    return-void
.end method

.method public b(Landroid/graphics/Typeface;Z)V
  .registers 3
    if-eqz p2, :L0
    return-void
  :L0
  .line 1
    iget-object p1, p0, Lcom/google/android/material/internal/h$a;->a:Lcom/google/android/material/internal/h;
    const/4 p2, 1
    invoke-static { p1, p2 }, Lcom/google/android/material/internal/h;->a(Lcom/google/android/material/internal/h;Z)Z
  .line 2
    iget-object p1, p0, Lcom/google/android/material/internal/h$a;->a:Lcom/google/android/material/internal/h;
    invoke-static { p1 }, Lcom/google/android/material/internal/h;->b(Lcom/google/android/material/internal/h;)Ljava/lang/ref/WeakReference;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lcom/google/android/material/internal/h$b;
    if-eqz p1, :L1
  .line 3
    invoke-interface { p1 }, Lcom/google/android/material/internal/h$b;->a()V
  :L1
    return-void
.end method
