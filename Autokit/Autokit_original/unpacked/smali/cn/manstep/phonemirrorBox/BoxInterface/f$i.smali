.class Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/BoxInterface/f;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = "i"
.end annotation

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.method public constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 p1, 0
  .line 2
    iput p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->a:I
  .line 3
    iput p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->b:I
  .line 4
    iput p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->c:I
  .line 5
    iput p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->d:I
    return-void
.end method

.method static synthetic e(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;)I
  .registers 1
  .line 1
    iget p0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->b:I
    return p0
.end method

.method static synthetic f(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I
  .registers 2
  .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->b:I
    return p1
.end method

.method static synthetic g(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;)I
  .registers 1
  .line 1
    iget p0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->a:I
    return p0
.end method

.method static synthetic h(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I
  .registers 2
  .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->a:I
    return p1
.end method

.method static synthetic i(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;)I
  .registers 1
  .line 1
    iget p0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->c:I
    return p0
.end method

.method static synthetic j(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I
  .registers 2
  .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->c:I
    return p1
.end method

.method static synthetic k(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;)I
  .registers 1
  .line 1
    iget p0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->d:I
    return p0
.end method

.method static synthetic l(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I
  .registers 2
  .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->d:I
    return p1
.end method

.method public a()V
  .registers 2
    const v0, 1438340539
  .line 1
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->a:I
    return-void
.end method

.method public b()Z
  .registers 3
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->a:I
    const v1, 1438340539
    if-ne v1, v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public c()Z
  .registers 3
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->a:I
    const v1, 1437226410
    if-eq v1, v0, :L0
    const v1, 1438340539
    if-ne v1, v0, :L1
  :L0
    iget v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->d:I
    iget v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->c:I
    xor-int/lit8 v1, v1, -1
    if-ne v0, v1, :L1
    const/4 v0, 1
    goto :L2
  :L1
    const/4 v0, 0
  :L2
    return v0
.end method

.method public d()V
  .registers 2
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->c:I
    xor-int/lit8 v0, v0, -1
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->d:I
  .line 2
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->b()Z
    move-result v0
    if-eqz v0, :L0
    const v0, 1438340539
    goto :L1
  :L0
    const v0, 1437226410
  :L1
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->a:I
    return-void
.end method

.method public m()I
  .registers 2
    const/16 v0, 16
    return v0
.end method
