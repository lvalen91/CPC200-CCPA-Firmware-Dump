.class public synthetic La;
.super Ljava/lang/Object;

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
  .registers 2
    if-eq p0, p1, :L1
    if-eqz p0, :L0
    invoke-virtual { p0, p1 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result p0
    if-eqz p0, :L0
    goto :L1
  :L0
    const/4 p0, 0
    goto :L2
  :L1
    const/4 p0, 1
  :L2
    return p0
.end method
