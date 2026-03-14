.class Lc/c/a/b;
.super Lc/c/a/d;
.source "SourceFile"

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lc/c/a/d;-><init>()V
    return-void
.end method

.method public m()V
  .registers 2
  .line 1
    new-instance v0, Lc/c/a/b$a;
    invoke-direct { v0, p0 }, Lc/c/a/b$a;-><init>(Lc/c/a/b;)V
    sput-object v0, Lc/c/a/h;->r:Lc/c/a/h$a;
    return-void
.end method
