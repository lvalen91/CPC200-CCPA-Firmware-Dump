.class public Lcn/manstep/phonemirrorBox/q0/e;
.super Ljava/lang/Object;
.implements Lcn/manstep/phonemirrorBox/q0/g;
.source "SourceFile"

.field private a:I

.method public constructor <init>(I)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, -1
  .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/q0/e;->a:I
  .line 3
    iput p1, p0, Lcn/manstep/phonemirrorBox/q0/e;->a:I
    return-void
.end method

.method public a()Z
  .registers 2
    const/4 v0, 1
    return v0
.end method

.method public b()Z
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public c()I
  .registers 2
    const/4 v0, 3
    return v0
.end method

.method public d()Z
  .registers 2
    const/4 v0, 1
    return v0
.end method

.method public e()Z
  .registers 2
    const/4 v0, 1
    return v0
.end method

.method public f()Z
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public g()Z
  .registers 2
    const/4 v0, 1
    return v0
.end method

.method public h()I
  .registers 2
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/q0/e;->a:I
    return v0
.end method

.method public i()Z
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public j()I
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public k()Z
  .registers 2
    const/4 v0, 1
    return v0
.end method

.method public l(Z)I
  .registers 2
    if-eqz p1, :L0
    const/16 p1, 10
    return p1
  :L0
    const/4 p1, 5
    return p1
.end method
