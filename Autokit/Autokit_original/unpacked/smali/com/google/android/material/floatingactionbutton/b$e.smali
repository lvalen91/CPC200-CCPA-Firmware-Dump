.class Lcom/google/android/material/floatingactionbutton/b$e;
.super Ljava/lang/Object;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/floatingactionbutton/b;->q()Landroid/view/ViewTreeObserver$OnPreDrawListener;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcom/google/android/material/floatingactionbutton/b;

.method constructor <init>(Lcom/google/android/material/floatingactionbutton/b;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/b$e;->b:Lcom/google/android/material/floatingactionbutton/b;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onPreDraw()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b$e;->b:Lcom/google/android/material/floatingactionbutton/b;
    invoke-virtual { v0 }, Lcom/google/android/material/floatingactionbutton/b;->F()V
    const/4 v0, 1
    return v0
.end method
