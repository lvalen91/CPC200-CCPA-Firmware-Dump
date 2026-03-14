.class public final Landroidx/media/AudioAttributesCompatParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static read(Landroidx/versionedparcelable/a;)Landroidx/media/AudioAttributesCompat;
  .registers 4
  .line 1
    new-instance v0, Landroidx/media/AudioAttributesCompat;
    invoke-direct { v0 }, Landroidx/media/AudioAttributesCompat;-><init>()V
  .line 2
    iget-object v1, v0, Landroidx/media/AudioAttributesCompat;->a:Landroidx/media/AudioAttributesImpl;
    const/4 v2, 1
    invoke-virtual { p0, v1, v2 }, Landroidx/versionedparcelable/a;->v(Landroidx/versionedparcelable/c;I)Landroidx/versionedparcelable/c;
    move-result-object p0
    check-cast p0, Landroidx/media/AudioAttributesImpl;
    iput-object p0, v0, Landroidx/media/AudioAttributesCompat;->a:Landroidx/media/AudioAttributesImpl;
    return-object v0
.end method

.method public static write(Landroidx/media/AudioAttributesCompat;Landroidx/versionedparcelable/a;)V
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-virtual { p1, v0, v0 }, Landroidx/versionedparcelable/a;->x(ZZ)V
  .line 2
    iget-object p0, p0, Landroidx/media/AudioAttributesCompat;->a:Landroidx/media/AudioAttributesImpl;
    const/4 v0, 1
    invoke-virtual { p1, p0, v0 }, Landroidx/versionedparcelable/a;->M(Landroidx/versionedparcelable/c;I)V
    return-void
.end method
