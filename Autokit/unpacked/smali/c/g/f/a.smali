.class public Lc/g/f/a;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static a(FFF)F
  .registers 4
    cmpg-float v0, p0, p1
    if-gez v0, :L0
    return p1
  :L0
    cmpl-float p1, p0, p2
    if-lez p1, :L1
    return p2
  :L1
    return p0
.end method

.method public static b(III)I
  .registers 3
    if-ge p0, p1, :L0
    return p1
  :L0
    if-le p0, p2, :L1
    return p2
  :L1
    return p0
.end method
