.class Landroid/support/v4/media/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroid/support/v4/media/e;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "a"
.end annotation

.method public static a(Ljava/lang/Object;Landroid/net/Uri;)V
  .registers 2
  .line 1
    check-cast p0, Landroid/media/MediaDescription$Builder;
    invoke-virtual { p0, p1 }, Landroid/media/MediaDescription$Builder;->setMediaUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;
    return-void
.end method
