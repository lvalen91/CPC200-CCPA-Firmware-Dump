.class public Ld/c/a/a/m/a;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static a(Landroid/graphics/Canvas;FFFFI)I
  .registers 13
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-le v0, v1, :L0
  .line 2
    invoke-virtual/range { p0 .. p5 }, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I
    move-result p0
    return p0
  :L0
    const/16 v6, 31
    move-object v0, p0
    move v1, p1
    move v2, p2
    move v3, p3
    move v4, p4
    move v5, p5
  .line 3
    invoke-virtual/range { v0 .. v6 }, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I
    move-result p0
    return p0
.end method
