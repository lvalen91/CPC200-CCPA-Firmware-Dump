.class public Lc/p/b;
.super Lc/p/q;
.source "SourceFile"

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lc/p/q;-><init>()V
  .line 2
    invoke-direct { p0 }, Lc/p/b;->o0()V
    return-void
.end method

.method private o0()V
  .registers 4
    const/4 v0, 1
  .line 1
    invoke-virtual { p0, v0 }, Lc/p/q;->l0(I)Lc/p/q;
  .line 2
    new-instance v1, Lc/p/d;
    const/4 v2, 2
    invoke-direct { v1, v2 }, Lc/p/d;-><init>(I)V
    invoke-virtual { p0, v1 }, Lc/p/q;->d0(Lc/p/m;)Lc/p/q;
    new-instance v1, Lc/p/c;
    invoke-direct { v1 }, Lc/p/c;-><init>()V
  .line 3
    invoke-virtual { p0, v1 }, Lc/p/q;->d0(Lc/p/m;)Lc/p/q;
    new-instance v1, Lc/p/d;
    invoke-direct { v1, v0 }, Lc/p/d;-><init>(I)V
  .line 4
    invoke-virtual { p0, v1 }, Lc/p/q;->d0(Lc/p/m;)Lc/p/q;
    return-void
.end method
