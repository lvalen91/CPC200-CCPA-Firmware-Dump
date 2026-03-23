.class public Lcn/manstep/phonemirrorBox/util/i;
.super Ljava/lang/Object;
.source "SourceFile"

.field private a:Ljava/util/Vector;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Vector<",
      "[B>;"
    }
  .end annotation
.end field

.field private b:Ljava/util/Vector;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Vector<",
      "[B>;"
    }
  .end annotation
.end field

.method public constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/util/Vector;
    const/16 v1, 320
    invoke-direct { v0, v1 }, Ljava/util/Vector;-><init>(I)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/i;->a:Ljava/util/Vector;
  .line 3
    new-instance v0, Ljava/util/Vector;
    invoke-direct { v0, v1 }, Ljava/util/Vector;-><init>(I)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/i;->b:Ljava/util/Vector;
    return-void
.end method

.method public a([B)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/i;->b:Ljava/util/Vector;
    invoke-virtual { v0, p1 }, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    return-void
.end method

.method public b()V
  .registers 2
  :L0
  .line 1
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/util/i;->e()Z
    move-result v0
    if-nez v0, :L1
    const/4 v0, 0
  .line 2
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/util/i;->f(I)V
    goto :L0
  :L1
    return-void
.end method

.method public c()[B
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/util/i;->e()Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 0
    goto :L1
  :L0
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/i;->b:Ljava/util/Vector;
    invoke-virtual { v0 }, Ljava/util/Vector;->firstElement()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [B
  :L1
    return-object v0
.end method

.method public d(I)[B
  .registers 6
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/i;->a:Ljava/util/Vector;
    invoke-virtual { v0 }, Ljava/util/Vector;->isEmpty()Z
    move-result v0
    if-eqz v0, :L0
    goto :L4
  :L0
    const/4 v0, 0
    const/4 v1, 0
  :L1
  .line 2
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/util/i;->a:Ljava/util/Vector;
    invoke-virtual { v2 }, Ljava/util/Vector;->size()I
    move-result v2
    if-ge v1, v2, :L3
  .line 3
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/util/i;->a:Ljava/util/Vector;
    invoke-virtual { v2, v1 }, Ljava/util/Vector;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, [B
  .line 4
    array-length v3, v2
    if-ne v3, p1, :L2
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/i;->a:Ljava/util/Vector;
    invoke-virtual { p1, v1 }, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    return-object v2
  :L2
    add-int/lit8 v1, v1, 1
    goto :L1
  :L3
  .line 6
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/i;->a:Ljava/util/Vector;
    invoke-virtual { v1, v0 }, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
  :L4
  .line 7
    new-array p1, p1, [B
    return-object p1
.end method

.method public e()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/i;->b:Ljava/util/Vector;
    invoke-virtual { v0 }, Ljava/util/Vector;->isEmpty()Z
    move-result v0
    return v0
.end method

.method public f(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/i;->a:Ljava/util/Vector;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/i;->b:Ljava/util/Vector;
    invoke-virtual { v1, p1 }, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/i;->b:Ljava/util/Vector;
    invoke-virtual { v0, p1 }, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    return-void
.end method

.method public g()I
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/i;->b:Ljava/util/Vector;
    invoke-virtual { v0 }, Ljava/util/Vector;->size()I
    move-result v0
    return v0
.end method
