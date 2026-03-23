.class public abstract Lcn/manstep/phonemirrorBox/f0/a;
.super Ljava/lang/Object;
.source "SourceFile"

.field protected a:I

.field protected b:I

.field protected c:Z

.field protected d:Ld/b/a/b;

.field protected e:Landroid/media/AudioManager;

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I
  .line 3
    iput v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->b:I
    return-void
.end method

.method public a()I
  .registers 2
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->b:I
    return v0
.end method

.method public b()I
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->d:Ld/b/a/b;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Ld/b/a/b;->C()I
    move-result v0
    return v0
  :L0
    const/16 v0, -255
    return v0
.end method

.method public c()I
  .registers 2
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->a:I
    return v0
.end method

.method public d()I
  .registers 2
    const/4 v0, -1
    return v0
.end method

.method public e()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/f0/a;->c:Z
    return v0
.end method

.method public f(Ld/b/a/b;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/f0/a;->d:Ld/b/a/b;
    return-void
.end method
