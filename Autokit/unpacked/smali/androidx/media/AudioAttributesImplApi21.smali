.class Landroidx/media/AudioAttributesImplApi21;
.super Ljava/lang/Object;
.implements Landroidx/media/AudioAttributesImpl;
.source "SourceFile"

.annotation build Landroid/annotation/TargetApi;
  value = 21
.end annotation

.field a:Landroid/media/AudioAttributes;

.field b:I

.method constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, -1
  .line 2
    iput v0, p0, Landroidx/media/AudioAttributesImplApi21;->b:I
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 3
  .line 1
    instance-of v0, p1, Landroidx/media/AudioAttributesImplApi21;
    if-nez v0, :L0
    const/4 p1, 0
    return p1
  :L0
  .line 2
    check-cast p1, Landroidx/media/AudioAttributesImplApi21;
  .line 3
    iget-object v0, p0, Landroidx/media/AudioAttributesImplApi21;->a:Landroid/media/AudioAttributes;
    iget-object p1, p1, Landroidx/media/AudioAttributesImplApi21;->a:Landroid/media/AudioAttributes;
    invoke-virtual { v0, p1 }, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z
    move-result p1
    return p1
.end method

.method public hashCode()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/media/AudioAttributesImplApi21;->a:Landroid/media/AudioAttributes;
    invoke-virtual { v0 }, Landroid/media/AudioAttributes;->hashCode()I
    move-result v0
    return v0
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "AudioAttributesCompat: audioattributes="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/media/AudioAttributesImplApi21;->a:Landroid/media/AudioAttributes;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
