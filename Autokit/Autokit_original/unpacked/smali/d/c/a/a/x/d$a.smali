.class Ld/c/a/a/x/d$a;
.super Landroidx/core/content/c/f$a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Ld/c/a/a/x/d;->h(Landroid/content/Context;Ld/c/a/a/x/f;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Ld/c/a/a/x/f;

.field final synthetic b:Ld/c/a/a/x/d;

.method constructor <init>(Ld/c/a/a/x/d;Ld/c/a/a/x/f;)V
  .registers 3
  .line 1
    iput-object p1, p0, Ld/c/a/a/x/d$a;->b:Ld/c/a/a/x/d;
    iput-object p2, p0, Ld/c/a/a/x/d$a;->a:Ld/c/a/a/x/f;
    invoke-direct { p0 }, Landroidx/core/content/c/f$a;-><init>()V
    return-void
.end method

.method public d(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Ld/c/a/a/x/d$a;->b:Ld/c/a/a/x/d;
    const/4 v1, 1
    invoke-static { v0, v1 }, Ld/c/a/a/x/d;->c(Ld/c/a/a/x/d;Z)Z
  .line 2
    iget-object v0, p0, Ld/c/a/a/x/d$a;->a:Ld/c/a/a/x/f;
    invoke-virtual { v0, p1 }, Ld/c/a/a/x/f;->a(I)V
    return-void
.end method

.method public e(Landroid/graphics/Typeface;)V
  .registers 4
  .line 1
    iget-object v0, p0, Ld/c/a/a/x/d$a;->b:Ld/c/a/a/x/d;
    iget v1, v0, Ld/c/a/a/x/d;->d:I
    invoke-static { p1, v1 }, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    move-result-object p1
    invoke-static { v0, p1 }, Ld/c/a/a/x/d;->b(Ld/c/a/a/x/d;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
  .line 2
    iget-object p1, p0, Ld/c/a/a/x/d$a;->b:Ld/c/a/a/x/d;
    const/4 v0, 1
    invoke-static { p1, v0 }, Ld/c/a/a/x/d;->c(Ld/c/a/a/x/d;Z)Z
  .line 3
    iget-object p1, p0, Ld/c/a/a/x/d$a;->a:Ld/c/a/a/x/f;
    iget-object v0, p0, Ld/c/a/a/x/d$a;->b:Ld/c/a/a/x/d;
    invoke-static { v0 }, Ld/c/a/a/x/d;->a(Ld/c/a/a/x/d;)Landroid/graphics/Typeface;
    move-result-object v0
    const/4 v1, 0
    invoke-virtual { p1, v0, v1 }, Ld/c/a/a/x/f;->b(Landroid/graphics/Typeface;Z)V
    return-void
.end method
