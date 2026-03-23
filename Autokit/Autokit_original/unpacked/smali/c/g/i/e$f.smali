.class Lc/g/i/e$f;
.super Lc/g/i/e$d;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/g/i/e;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "f"
.end annotation

.field final static b:Lc/g/i/e$f;

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Lc/g/i/e$f;
    invoke-direct { v0 }, Lc/g/i/e$f;-><init>()V
    sput-object v0, Lc/g/i/e$f;->b:Lc/g/i/e$f;
    return-void
.end method

.method constructor <init>()V
  .registers 2
    const/4 v0, 0
  .line 1
    invoke-direct { p0, v0 }, Lc/g/i/e$d;-><init>(Lc/g/i/e$c;)V
    return-void
.end method

.method protected b()Z
  .registers 3
  .line 1
    invoke-static { }, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    move-result-object v0
    invoke-static { v0 }, Lc/g/i/f;->b(Ljava/util/Locale;)I
    move-result v0
    const/4 v1, 1
    if-ne v0, v1, :L0
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    return v1
.end method
