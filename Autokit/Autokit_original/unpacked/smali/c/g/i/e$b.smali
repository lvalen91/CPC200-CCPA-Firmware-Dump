.class Lc/g/i/e$b;
.super Ljava/lang/Object;
.implements Lc/g/i/e$c;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/g/i/e;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "b"
.end annotation

.field final static a:Lc/g/i/e$b;

.method static constructor <clinit>()V
  .registers 3
  .line 1
    new-instance v0, Lc/g/i/e$b;
    invoke-direct { v0 }, Lc/g/i/e$b;-><init>()V
    sput-object v0, Lc/g/i/e$b;->a:Lc/g/i/e$b;
    return-void
.end method

.method private constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Ljava/lang/CharSequence;II)I
  .registers 6
    add-int/2addr p3, p2
    const/4 v0, 2
    const/4 v1, 2
  :L0
    if-ge p2, p3, :L1
    if-ne v1, v0, :L1
  .line 1
    invoke-interface { p1, p2 }, Ljava/lang/CharSequence;->charAt(I)C
    move-result v1
    invoke-static { v1 }, Ljava/lang/Character;->getDirectionality(C)B
    move-result v1
    invoke-static { v1 }, Lc/g/i/e;->b(I)I
    move-result v1
    add-int/lit8 p2, p2, 1
    goto :L0
  :L1
    return v1
.end method
