.class public abstract Lcn/manstep/phonemirrorBox/b;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public abstract a()[I
.end method

.method public b(Landroid/content/Context;Z)I
  .registers 4
    const/high16 v0, 16960
  .line 1
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I
    move-result v0
    if-eqz p2, :L0
    const/high16 p2, 17024
  .line 2
    invoke-static { p1, p2 }, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I
    move-result v0
  :L0
    return v0
.end method

.method public abstract c(Landroid/content/Context;I)I
.end method

.method public abstract d()[Ljava/lang/String;
.end method

.method public abstract e()I
.end method

.method public abstract f(Landroid/content/Context;Landroid/widget/Button;ZZZ)V
.end method
