.class synthetic Landroidx/lifecycle/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/lifecycle/f;
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
  .catch Ljava/lang/NoSuchFieldError; { :L12 .. :L13 } :L13
  .catch Ljava/lang/NoSuchFieldError; { :L13 .. :L14 } :L14
  .catch Ljava/lang/NoSuchFieldError; { :L14 .. :L15 } :L15
  .catch Ljava/lang/NoSuchFieldError; { :L15 .. :L16 } :L16
  .catch Ljava/lang/NoSuchFieldError; { :L16 .. :L17 } :L17
  .registers 8
  .line 1
    invoke-static { }, Landroidx/lifecycle/f$b;->values()[Landroidx/lifecycle/f$b;
    move-result-object v0
    array-length v0, v0
    new-array v0, v0, [I
    sput-object v0, Landroidx/lifecycle/f$a;->b:[I
    const/4 v1, 1
  :L0
    sget-object v2, Landroidx/lifecycle/f$b;->ON_CREATE:Landroidx/lifecycle/f$b;
    invoke-virtual { v2 }, Ljava/lang/Enum;->ordinal()I
    move-result v2
    aput v1, v0, v2
  :L1
    const/4 v0, 2
  :L2
    sget-object v2, Landroidx/lifecycle/f$a;->b:[I
    sget-object v3, Landroidx/lifecycle/f$b;->ON_STOP:Landroidx/lifecycle/f$b;
    invoke-virtual { v3 }, Ljava/lang/Enum;->ordinal()I
    move-result v3
    aput v0, v2, v3
  :L3
    const/4 v2, 3
  :L4
    sget-object v3, Landroidx/lifecycle/f$a;->b:[I
    sget-object v4, Landroidx/lifecycle/f$b;->ON_START:Landroidx/lifecycle/f$b;
    invoke-virtual { v4 }, Ljava/lang/Enum;->ordinal()I
    move-result v4
    aput v2, v3, v4
  :L5
    const/4 v3, 4
  :L6
    sget-object v4, Landroidx/lifecycle/f$a;->b:[I
    sget-object v5, Landroidx/lifecycle/f$b;->ON_PAUSE:Landroidx/lifecycle/f$b;
    invoke-virtual { v5 }, Ljava/lang/Enum;->ordinal()I
    move-result v5
    aput v3, v4, v5
  :L7
    const/4 v4, 5
  :L8
    sget-object v5, Landroidx/lifecycle/f$a;->b:[I
    sget-object v6, Landroidx/lifecycle/f$b;->ON_RESUME:Landroidx/lifecycle/f$b;
    invoke-virtual { v6 }, Ljava/lang/Enum;->ordinal()I
    move-result v6
    aput v4, v5, v6
  :L9
    sget-object v5, Landroidx/lifecycle/f$a;->b:[I
    sget-object v6, Landroidx/lifecycle/f$b;->ON_DESTROY:Landroidx/lifecycle/f$b;
    invoke-virtual { v6 }, Ljava/lang/Enum;->ordinal()I
    move-result v6
    const/4 v7, 6
    aput v7, v5, v6
  :L10
    sget-object v5, Landroidx/lifecycle/f$a;->b:[I
    sget-object v6, Landroidx/lifecycle/f$b;->ON_ANY:Landroidx/lifecycle/f$b;
    invoke-virtual { v6 }, Ljava/lang/Enum;->ordinal()I
    move-result v6
    const/4 v7, 7
    aput v7, v5, v6
  :L11
  .line 2
    invoke-static { }, Landroidx/lifecycle/f$c;->values()[Landroidx/lifecycle/f$c;
    move-result-object v5
    array-length v5, v5
    new-array v5, v5, [I
    sput-object v5, Landroidx/lifecycle/f$a;->a:[I
  :L12
    sget-object v6, Landroidx/lifecycle/f$c;->d:Landroidx/lifecycle/f$c;
    invoke-virtual { v6 }, Ljava/lang/Enum;->ordinal()I
    move-result v6
    aput v1, v5, v6
  :L13
    sget-object v1, Landroidx/lifecycle/f$a;->a:[I
    sget-object v5, Landroidx/lifecycle/f$c;->e:Landroidx/lifecycle/f$c;
    invoke-virtual { v5 }, Ljava/lang/Enum;->ordinal()I
    move-result v5
    aput v0, v1, v5
  :L14
    sget-object v0, Landroidx/lifecycle/f$a;->a:[I
    sget-object v1, Landroidx/lifecycle/f$c;->f:Landroidx/lifecycle/f$c;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    aput v2, v0, v1
  :L15
    sget-object v0, Landroidx/lifecycle/f$a;->a:[I
    sget-object v1, Landroidx/lifecycle/f$c;->b:Landroidx/lifecycle/f$c;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    aput v3, v0, v1
  :L16
    sget-object v0, Landroidx/lifecycle/f$a;->a:[I
    sget-object v1, Landroidx/lifecycle/f$c;->c:Landroidx/lifecycle/f$c;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    aput v4, v0, v1
  :L17
    return-void
.end method
