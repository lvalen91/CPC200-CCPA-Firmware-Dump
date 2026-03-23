.class Lcn/manstep/phonemirrorBox/k$b;
.super Lc/a/o/d;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/k;->attachBaseContext(Landroid/content/Context;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic f:Landroid/content/res/Configuration;

.method constructor <init>(Lcn/manstep/phonemirrorBox/k;Landroid/content/Context;Landroid/content/res/Resources$Theme;Landroid/content/res/Configuration;)V
  .registers 5
  .line 1
    iput-object p4, p0, Lcn/manstep/phonemirrorBox/k$b;->f:Landroid/content/res/Configuration;
    invoke-direct { p0, p2, p3 }, Lc/a/o/d;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
  .registers 3
    if-eqz p1, :L0
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k$b;->f:Landroid/content/res/Configuration;
    invoke-virtual { p1, v0 }, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V
  :L0
  .line 2
    invoke-super { p0, p1 }, Lc/a/o/d;->a(Landroid/content/res/Configuration;)V
    return-void
.end method
