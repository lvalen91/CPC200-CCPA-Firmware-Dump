.class synthetic Ld/c/b/e/c/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Ld/c/b/e/c/c;
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
  .registers 3
  .line 1
    invoke-static { }, Ld/c/b/e/b/b;->values()[Ld/c/b/e/b/b;
    move-result-object v0
    array-length v0, v0
    new-array v0, v0, [I
    sput-object v0, Ld/c/b/e/c/c$a;->a:[I
  :L0
    sget-object v1, Ld/c/b/e/b/b;->e:Ld/c/b/e/b/b;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    const/4 v2, 1
    aput v2, v0, v1
  :L1
    sget-object v0, Ld/c/b/e/c/c$a;->a:[I
    sget-object v1, Ld/c/b/e/b/b;->f:Ld/c/b/e/b/b;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    const/4 v2, 2
    aput v2, v0, v1
  :L2
    sget-object v0, Ld/c/b/e/c/c$a;->a:[I
    sget-object v1, Ld/c/b/e/b/b;->h:Ld/c/b/e/b/b;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    const/4 v2, 3
    aput v2, v0, v1
  :L3
    sget-object v0, Ld/c/b/e/c/c$a;->a:[I
    sget-object v1, Ld/c/b/e/b/b;->j:Ld/c/b/e/b/b;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    const/4 v2, 4
    aput v2, v0, v1
  :L4
    return-void
.end method

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method
