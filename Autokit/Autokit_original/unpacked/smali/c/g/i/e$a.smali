.class Lc/g/i/e$a;
.super Ljava/lang/Object;
.implements Lc/g/i/e$c;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/g/i/e;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "a"
.end annotation

.field final static b:Lc/g/i/e$a;

.field private final a:Z

.method static constructor <clinit>()V
  .registers 3
  .line 1
    new-instance v0, Lc/g/i/e$a;
    const/4 v1, 1
    invoke-direct { v0, v1 }, Lc/g/i/e$a;-><init>(Z)V
    sput-object v0, Lc/g/i/e$a;->b:Lc/g/i/e$a;
    return-void
.end method

.method private constructor <init>(Z)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-boolean p1, p0, Lc/g/i/e$a;->a:Z
    return-void
.end method

.method public a(Ljava/lang/CharSequence;II)I
  .registers 8
    add-int/2addr p3, p2
    const/4 v0, 0
    const/4 v1, 0
  :L0
    if-ge p2, p3, :L5
  .line 1
    invoke-interface { p1, p2 }, Ljava/lang/CharSequence;->charAt(I)C
    move-result v2
    invoke-static { v2 }, Ljava/lang/Character;->getDirectionality(C)B
    move-result v2
    invoke-static { v2 }, Lc/g/i/e;->a(I)I
    move-result v2
    const/4 v3, 1
    if-eqz v2, :L2
    if-eq v2, v3, :L1
    goto :L4
  :L1
  .line 2
    iget-boolean v1, p0, Lc/g/i/e$a;->a:Z
    if-nez v1, :L3
    return v3
  :L2
  .line 3
    iget-boolean v1, p0, Lc/g/i/e$a;->a:Z
    if-eqz v1, :L3
    return v0
  :L3
    const/4 v1, 1
  :L4
    add-int/lit8 p2, p2, 1
    goto :L0
  :L5
    if-eqz v1, :L6
  .line 4
    iget-boolean p1, p0, Lc/g/i/e$a;->a:Z
    return p1
  :L6
    const/4 p1, 2
    return p1
.end method
