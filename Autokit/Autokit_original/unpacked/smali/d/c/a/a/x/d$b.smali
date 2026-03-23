.class Ld/c/a/a/x/d$b;
.super Ld/c/a/a/x/f;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Ld/c/a/a/x/d;->g(Landroid/content/Context;Landroid/text/TextPaint;Ld/c/a/a/x/f;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroid/text/TextPaint;

.field final synthetic b:Ld/c/a/a/x/f;

.field final synthetic c:Ld/c/a/a/x/d;

.method constructor <init>(Ld/c/a/a/x/d;Landroid/text/TextPaint;Ld/c/a/a/x/f;)V
  .registers 4
  .line 1
    iput-object p1, p0, Ld/c/a/a/x/d$b;->c:Ld/c/a/a/x/d;
    iput-object p2, p0, Ld/c/a/a/x/d$b;->a:Landroid/text/TextPaint;
    iput-object p3, p0, Ld/c/a/a/x/d$b;->b:Ld/c/a/a/x/f;
    invoke-direct { p0 }, Ld/c/a/a/x/f;-><init>()V
    return-void
.end method

.method public a(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Ld/c/a/a/x/d$b;->b:Ld/c/a/a/x/f;
    invoke-virtual { v0, p1 }, Ld/c/a/a/x/f;->a(I)V
    return-void
.end method

.method public b(Landroid/graphics/Typeface;Z)V
  .registers 5
  .line 1
    iget-object v0, p0, Ld/c/a/a/x/d$b;->c:Ld/c/a/a/x/d;
    iget-object v1, p0, Ld/c/a/a/x/d$b;->a:Landroid/text/TextPaint;
    invoke-virtual { v0, v1, p1 }, Ld/c/a/a/x/d;->l(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V
  .line 2
    iget-object v0, p0, Ld/c/a/a/x/d$b;->b:Ld/c/a/a/x/f;
    invoke-virtual { v0, p1, p2 }, Ld/c/a/a/x/f;->b(Landroid/graphics/Typeface;Z)V
    return-void
.end method
