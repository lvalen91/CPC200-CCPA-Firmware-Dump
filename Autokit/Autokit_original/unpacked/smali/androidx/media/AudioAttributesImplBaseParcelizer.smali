.class public final Landroidx/media/AudioAttributesImplBaseParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static read(Landroidx/versionedparcelable/a;)Landroidx/media/AudioAttributesImplBase;
  .registers 4
  .line 1
    new-instance v0, Landroidx/media/AudioAttributesImplBase;
    invoke-direct { v0 }, Landroidx/media/AudioAttributesImplBase;-><init>()V
  .line 2
    iget v1, v0, Landroidx/media/AudioAttributesImplBase;->a:I
    const/4 v2, 1
    invoke-virtual { p0, v1, v2 }, Landroidx/versionedparcelable/a;->p(II)I
    move-result v1
    iput v1, v0, Landroidx/media/AudioAttributesImplBase;->a:I
  .line 3
    iget v1, v0, Landroidx/media/AudioAttributesImplBase;->b:I
    const/4 v2, 2
    invoke-virtual { p0, v1, v2 }, Landroidx/versionedparcelable/a;->p(II)I
    move-result v1
    iput v1, v0, Landroidx/media/AudioAttributesImplBase;->b:I
  .line 4
    iget v1, v0, Landroidx/media/AudioAttributesImplBase;->c:I
    const/4 v2, 3
    invoke-virtual { p0, v1, v2 }, Landroidx/versionedparcelable/a;->p(II)I
    move-result v1
    iput v1, v0, Landroidx/media/AudioAttributesImplBase;->c:I
  .line 5
    iget v1, v0, Landroidx/media/AudioAttributesImplBase;->d:I
    const/4 v2, 4
    invoke-virtual { p0, v1, v2 }, Landroidx/versionedparcelable/a;->p(II)I
    move-result p0
    iput p0, v0, Landroidx/media/AudioAttributesImplBase;->d:I
    return-object v0
.end method

.method public static write(Landroidx/media/AudioAttributesImplBase;Landroidx/versionedparcelable/a;)V
  .registers 4
    const/4 v0, 0
  .line 1
    invoke-virtual { p1, v0, v0 }, Landroidx/versionedparcelable/a;->x(ZZ)V
  .line 2
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->a:I
    const/4 v1, 1
    invoke-virtual { p1, v0, v1 }, Landroidx/versionedparcelable/a;->F(II)V
  .line 3
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->b:I
    const/4 v1, 2
    invoke-virtual { p1, v0, v1 }, Landroidx/versionedparcelable/a;->F(II)V
  .line 4
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->c:I
    const/4 v1, 3
    invoke-virtual { p1, v0, v1 }, Landroidx/versionedparcelable/a;->F(II)V
  .line 5
    iget p0, p0, Landroidx/media/AudioAttributesImplBase;->d:I
    const/4 v0, 4
    invoke-virtual { p1, p0, v0 }, Landroidx/versionedparcelable/a;->F(II)V
    return-void
.end method
