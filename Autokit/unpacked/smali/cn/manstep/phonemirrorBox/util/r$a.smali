.class Lcn/manstep/phonemirrorBox/util/r$a;
.super Ljava/lang/Object;
.implements Landroid/location/LocationListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/util/r;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/util/r;

.method constructor <init>(Lcn/manstep/phonemirrorBox/util/r;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/r$a;->a:Lcn/manstep/phonemirrorBox/util/r;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
  .registers 2
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
  .registers 2
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
  .registers 2
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/r$a;->a:Lcn/manstep/phonemirrorBox/util/r;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/util/r;->c()V
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
  .registers 4
    return-void
.end method
