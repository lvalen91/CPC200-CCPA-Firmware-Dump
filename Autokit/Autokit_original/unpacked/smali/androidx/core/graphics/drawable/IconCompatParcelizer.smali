.class public Landroidx/core/graphics/drawable/IconCompatParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static read(Landroidx/versionedparcelable/a;)Landroidx/core/graphics/drawable/IconCompat;
  .registers 4
  .line 1
    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;
    invoke-direct { v0 }, Landroidx/core/graphics/drawable/IconCompat;-><init>()V
  .line 2
    iget v1, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I
    const/4 v2, 1
    invoke-virtual { p0, v1, v2 }, Landroidx/versionedparcelable/a;->p(II)I
    move-result v1
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I
  .line 3
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B
    const/4 v2, 2
    invoke-virtual { p0, v1, v2 }, Landroidx/versionedparcelable/a;->j([BI)[B
    move-result-object v1
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B
  .line 4
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;
    const/4 v2, 3
    invoke-virtual { p0, v1, v2 }, Landroidx/versionedparcelable/a;->r(Landroid/os/Parcelable;I)Landroid/os/Parcelable;
    move-result-object v1
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;
  .line 5
    iget v1, v0, Landroidx/core/graphics/drawable/IconCompat;->e:I
    const/4 v2, 4
    invoke-virtual { p0, v1, v2 }, Landroidx/versionedparcelable/a;->p(II)I
    move-result v1
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->e:I
  .line 6
    iget v1, v0, Landroidx/core/graphics/drawable/IconCompat;->f:I
    const/4 v2, 5
    invoke-virtual { p0, v1, v2 }, Landroidx/versionedparcelable/a;->p(II)I
    move-result v1
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->f:I
  .line 7
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;
    const/4 v2, 6
    invoke-virtual { p0, v1, v2 }, Landroidx/versionedparcelable/a;->r(Landroid/os/Parcelable;I)Landroid/os/Parcelable;
    move-result-object v1
    check-cast v1, Landroid/content/res/ColorStateList;
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;
  .line 8
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;
    const/4 v2, 7
    invoke-virtual { p0, v1, v2 }, Landroidx/versionedparcelable/a;->t(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v1
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;
  .line 9
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;
    const/16 v2, 8
    invoke-virtual { p0, v1, v2 }, Landroidx/versionedparcelable/a;->t(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object p0
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;
  .line 10
    invoke-virtual { v0 }, Landroidx/core/graphics/drawable/IconCompat;->c()V
    return-object v0
.end method

.method public static write(Landroidx/core/graphics/drawable/IconCompat;Landroidx/versionedparcelable/a;)V
  .registers 5
    const/4 v0, 1
  .line 1
    invoke-virtual { p1, v0, v0 }, Landroidx/versionedparcelable/a;->x(ZZ)V
  .line 2
    invoke-virtual { p1 }, Landroidx/versionedparcelable/a;->f()Z
    move-result v1
    invoke-virtual { p0, v1 }, Landroidx/core/graphics/drawable/IconCompat;->d(Z)V
  .line 3
    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I
    const/4 v2, -1
    if-eq v2, v1, :L0
  .line 4
    invoke-virtual { p1, v1, v0 }, Landroidx/versionedparcelable/a;->F(II)V
  :L0
  .line 5
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B
    if-eqz v0, :L1
    const/4 v1, 2
  .line 6
    invoke-virtual { p1, v0, v1 }, Landroidx/versionedparcelable/a;->B([BI)V
  :L1
  .line 7
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;
    if-eqz v0, :L2
    const/4 v1, 3
  .line 8
    invoke-virtual { p1, v0, v1 }, Landroidx/versionedparcelable/a;->H(Landroid/os/Parcelable;I)V
  :L2
  .line 9
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->e:I
    if-eqz v0, :L3
    const/4 v1, 4
  .line 10
    invoke-virtual { p1, v0, v1 }, Landroidx/versionedparcelable/a;->F(II)V
  :L3
  .line 11
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->f:I
    if-eqz v0, :L4
    const/4 v1, 5
  .line 12
    invoke-virtual { p1, v0, v1 }, Landroidx/versionedparcelable/a;->F(II)V
  :L4
  .line 13
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;
    if-eqz v0, :L5
    const/4 v1, 6
  .line 14
    invoke-virtual { p1, v0, v1 }, Landroidx/versionedparcelable/a;->H(Landroid/os/Parcelable;I)V
  :L5
  .line 15
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;
    if-eqz v0, :L6
    const/4 v1, 7
  .line 16
    invoke-virtual { p1, v0, v1 }, Landroidx/versionedparcelable/a;->J(Ljava/lang/String;I)V
  :L6
  .line 17
    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;
    if-eqz p0, :L7
    const/16 v0, 8
  .line 18
    invoke-virtual { p1, p0, v0 }, Landroidx/versionedparcelable/a;->J(Ljava/lang/String;I)V
  :L7
    return-void
.end method
