.class synthetic Lc/e/b/k/m/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/e/b/k/m/p;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 4104
  name = null
.end annotation

.field final static synthetic a:[I

.method static constructor <clinit>()V
  .catch Ljava/lang/NoSuchFieldError; { :L0 .. :L1 } :L1
  .catch Ljava/lang/NoSuchFieldError; { :L1 .. :L2 } :L2
  .catch Ljava/lang/NoSuchFieldError; { :L2 .. :L3 } :L3
  .catch Ljava/lang/NoSuchFieldError; { :L3 .. :L4 } :L4
  .catch Ljava/lang/NoSuchFieldError; { :L4 .. :L5 } :L5
  .registers 5
  .line 1
    invoke-static { }, Lc/e/b/k/d$b;->values()[Lc/e/b/k/d$b;
    move-result-object v0
    array-length v0, v0
    new-array v0, v0, [I
    sput-object v0, Lc/e/b/k/m/p$a;->a:[I
  :L0
    sget-object v1, Lc/e/b/k/d$b;->c:Lc/e/b/k/d$b;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    const/4 v2, 1
    aput v2, v0, v1
  :L1
    sget-object v0, Lc/e/b/k/m/p$a;->a:[I
    sget-object v1, Lc/e/b/k/d$b;->e:Lc/e/b/k/d$b;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    const/4 v2, 2
    aput v2, v0, v1
  :L2
    sget-object v0, Lc/e/b/k/m/p$a;->a:[I
    sget-object v1, Lc/e/b/k/d$b;->d:Lc/e/b/k/d$b;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    const/4 v2, 3
    aput v2, v0, v1
  :L3
    sget-object v0, Lc/e/b/k/m/p$a;->a:[I
    sget-object v1, Lc/e/b/k/d$b;->g:Lc/e/b/k/d$b;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    const/4 v2, 4
    aput v2, v0, v1
  :L4
    sget-object v0, Lc/e/b/k/m/p$a;->a:[I
    sget-object v1, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    const/4 v2, 5
    aput v2, v0, v1
  :L5
    return-void
.end method

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method
