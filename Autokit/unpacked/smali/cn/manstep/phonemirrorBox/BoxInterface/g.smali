.class public Lcn/manstep/phonemirrorBox/BoxInterface/g;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static a()I
  .registers 2
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->d()I
    move-result v0
    return v0
.end method

.method public static b()I
  .registers 3
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->f()I
    move-result v0
    return v0
.end method

.method public static c()I
  .registers 4
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->d()I
    move-result v0
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->f()I
    move-result v1
  .line 3
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/g;->d(II)I
    move-result v0
    return v0
.end method

.method public static d(II)I
  .registers 6
    const/4 v0, 3
    const/4 v1, 1
    const/4 v2, 2
    const/4 v3, 4
    if-nez p1, :L2
    if-eq p0, v2, :L1
    if-eq p0, v3, :L0
    goto :L2
  :L0
    return v1
  :L1
    return v0
  :L2
    if-ne p0, v3, :L8
    if-eq p1, v1, :L7
    const/4 p0, 5
    if-eq p1, v2, :L6
    if-eq p1, v0, :L5
    if-eq p1, v3, :L4
    if-eq p1, p0, :L3
    goto :L8
  :L3
    const/4 p0, 7
    return p0
  :L4
    const/4 p0, 6
    return p0
  :L5
    return v2
  :L6
    return p0
  :L7
    return v3
  :L8
    const/4 p0, 0
    return p0
.end method

.method public static e(I)Ljava/lang/String;
  .registers 2
    const/4 v0, 3
    if-eq p0, v0, :L3
    const/4 v0, 4
    if-eq p0, v0, :L2
    const/4 v0, 6
    if-eq p0, v0, :L1
    const/4 v0, 7
    if-eq p0, v0, :L0
    const-string p0, "Unknown"
    return-object p0
  :L0
    const-string p0, "CarLink"
    return-object p0
  :L1
    const-string p0, "HiCar"
    return-object p0
  :L2
    const-string p0, "AndroidAuto"
    return-object p0
  :L3
    const-string p0, "CarPlay"
    return-object p0
.end method

.method public static f(I)V
  .registers 4
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/g;->c()I
    move-result v0
    if-ne p0, v0, :L0
    return-void
  :L0
    const/4 v0, 2
    const/4 v1, 0
    const/4 v2, 4
    packed-switch p0, :L10
    return-void
  :L1
  .line 2
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c(I)V
    const/4 p0, 5
  .line 3
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b(I)V
    goto :L8
  :L2
  .line 4
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c(I)V
  .line 5
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b(I)V
    goto :L8
  :L3
  .line 6
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c(I)V
  .line 7
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b(I)V
    goto :L8
  :L4
  .line 8
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c(I)V
    const/4 p0, 1
  .line 9
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b(I)V
    goto :L8
  :L5
  .line 10
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c(I)V
  .line 11
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b(I)V
    goto :L8
  :L6
  .line 12
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c(I)V
    const/4 p0, 3
  .line 13
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b(I)V
    goto :L8
  :L7
  .line 14
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b(I)V
  .line 15
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c(I)V
  :L8
  .line 16
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result p0
    if-eqz p0, :L9
  .line 17
    sget-object p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->Y0()V
  :L9
    return-void
  :L10
  .packed-switch 1
    :L7
    :L6
    :L5
    :L4
    :L3
    :L2
    :L1
  .end packed-switch
.end method
