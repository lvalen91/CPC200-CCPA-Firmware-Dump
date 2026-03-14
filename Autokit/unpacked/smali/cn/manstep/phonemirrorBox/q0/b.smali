.class public Lcn/manstep/phonemirrorBox/q0/b;
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
    iput v0, p0, Lcn/manstep/phonemirrorBox/q0/b;->a:I
  .line 3
    iput p1, p0, Lcn/manstep/phonemirrorBox/q0/b;->a:I
    return-void
.end method

.method public a()Z
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public b()Z
  .registers 2
    const/4 v0, 1
    return v0
.end method

.method public c()I
  .registers 2
    const/4 v0, 1
    return v0
.end method

.method public d()Z
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public e()Z
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public f()Z
  .registers 2
    const/4 v0, 1
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
    iget v0, p0, Lcn/manstep/phonemirrorBox/q0/b;->a:I
    return v0
.end method

.method public i()Z
  .registers 2
    const/4 v0, 1
    return v0
.end method

.method public j()I
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public k()Z
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public l(Z)I
  .registers 2
    const/16 p1, 20
    return p1
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "AndroidMirror("
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lcn/manstep/phonemirrorBox/q0/b;->a:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ")"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
