.class synthetic Lc/e/b/k/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/e/b/k/e;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 4104
  name = null
.end annotation

.field final static synthetic a:[I

.field final static synthetic b:[I

.method static constructor <clinit>()V
  .catch Ljava/lang/NoSuchFieldError; { :L0 .. :L1 } :L1
  .catch Ljava/lang/NoSuchFieldError; { :L2 .. :L3 } :L3
  .catch Ljava/lang/NoSuchFieldError; { :L4 .. :L5 } :L5
  .catch Ljava/lang/NoSuchFieldError; { :L6 .. :L7 } :L7
  .catch Ljava/lang/NoSuchFieldError; { :L8 .. :L9 } :L9
  .catch Ljava/lang/NoSuchFieldError; { :L9 .. :L10 } :L10
  .catch Ljava/lang/NoSuchFieldError; { :L10 .. :L11 } :L11
  .catch Ljava/lang/NoSuchFieldError; { :L11 .. :L12 } :L12
  .catch Ljava/lang/NoSuchFieldError; { :L12 .. :L13 } :L13
  .catch Ljava/lang/NoSuchFieldError; { :L13 .. :L14 } :L14
  .catch Ljava/lang/NoSuchFieldError; { :L14 .. :L15 } :L15
  .catch Ljava/lang/NoSuchFieldError; { :L15 .. :L16 } :L16
  .catch Ljava/lang/NoSuchFieldError; { :L16 .. :L17 } :L17
  .registers 6
  .line 1
    invoke-static { }, Lc/e/b/k/e$b;->values()[Lc/e/b/k/e$b;
    move-result-object v0
    array-length v0, v0
    new-array v0, v0, [I
    sput-object v0, Lc/e/b/k/e$a;->b:[I
    const/4 v1, 1
  :L0
    sget-object v2, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    invoke-virtual { v2 }, Ljava/lang/Enum;->ordinal()I
    move-result v2
    aput v1, v0, v2
  :L1
    const/4 v0, 2
  :L2
    sget-object v2, Lc/e/b/k/e$a;->b:[I
    sget-object v3, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    invoke-virtual { v3 }, Ljava/lang/Enum;->ordinal()I
    move-result v3
    aput v0, v2, v3
  :L3
    const/4 v2, 3
  :L4
    sget-object v3, Lc/e/b/k/e$a;->b:[I
    sget-object v4, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;
    invoke-virtual { v4 }, Ljava/lang/Enum;->ordinal()I
    move-result v4
    aput v2, v3, v4
  :L5
    const/4 v3, 4
  :L6
    sget-object v4, Lc/e/b/k/e$a;->b:[I
    sget-object v5, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    invoke-virtual { v5 }, Ljava/lang/Enum;->ordinal()I
    move-result v5
    aput v3, v4, v5
  :L7
  .line 2
    invoke-static { }, Lc/e/b/k/d$b;->values()[Lc/e/b/k/d$b;
    move-result-object v4
    array-length v4, v4
    new-array v4, v4, [I
    sput-object v4, Lc/e/b/k/e$a;->a:[I
  :L8
    sget-object v5, Lc/e/b/k/d$b;->c:Lc/e/b/k/d$b;
    invoke-virtual { v5 }, Ljava/lang/Enum;->ordinal()I
    move-result v5
    aput v1, v4, v5
  :L9
    sget-object v1, Lc/e/b/k/e$a;->a:[I
    sget-object v4, Lc/e/b/k/d$b;->d:Lc/e/b/k/d$b;
    invoke-virtual { v4 }, Ljava/lang/Enum;->ordinal()I
    move-result v4
    aput v0, v1, v4
  :L10
    sget-object v0, Lc/e/b/k/e$a;->a:[I
    sget-object v1, Lc/e/b/k/d$b;->e:Lc/e/b/k/d$b;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    aput v2, v0, v1
  :L11
    sget-object v0, Lc/e/b/k/e$a;->a:[I
    sget-object v1, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    aput v3, v0, v1
  :L12
    sget-object v0, Lc/e/b/k/e$a;->a:[I
    sget-object v1, Lc/e/b/k/d$b;->g:Lc/e/b/k/d$b;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    const/4 v2, 5
    aput v2, v0, v1
  :L13
    sget-object v0, Lc/e/b/k/e$a;->a:[I
    sget-object v1, Lc/e/b/k/d$b;->h:Lc/e/b/k/d$b;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    const/4 v2, 6
    aput v2, v0, v1
  :L14
    sget-object v0, Lc/e/b/k/e$a;->a:[I
    sget-object v1, Lc/e/b/k/d$b;->i:Lc/e/b/k/d$b;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    const/4 v2, 7
    aput v2, v0, v1
  :L15
    sget-object v0, Lc/e/b/k/e$a;->a:[I
    sget-object v1, Lc/e/b/k/d$b;->j:Lc/e/b/k/d$b;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    const/16 v2, 8
    aput v2, v0, v1
  :L16
    sget-object v0, Lc/e/b/k/e$a;->a:[I
    sget-object v1, Lc/e/b/k/d$b;->b:Lc/e/b/k/d$b;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    const/16 v2, 9
    aput v2, v0, v1
  :L17
    return-void
.end method

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method
