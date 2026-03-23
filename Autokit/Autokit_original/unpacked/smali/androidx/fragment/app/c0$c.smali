.class synthetic Landroidx/fragment/app/c0$c;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/fragment/app/c0;
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
  .catch Ljava/lang/NoSuchFieldError; { :L7 .. :L8 } :L8
  .catch Ljava/lang/NoSuchFieldError; { :L8 .. :L9 } :L9
  .catch Ljava/lang/NoSuchFieldError; { :L9 .. :L10 } :L10
  .registers 5
  .line 1
    invoke-static { }, Landroidx/fragment/app/c0$e$b;->values()[Landroidx/fragment/app/c0$e$b;
    move-result-object v0
    array-length v0, v0
    new-array v0, v0, [I
    sput-object v0, Landroidx/fragment/app/c0$c;->b:[I
    const/4 v1, 1
  :L0
    sget-object v2, Landroidx/fragment/app/c0$e$b;->c:Landroidx/fragment/app/c0$e$b;
    invoke-virtual { v2 }, Ljava/lang/Enum;->ordinal()I
    move-result v2
    aput v1, v0, v2
  :L1
    const/4 v0, 2
  :L2
    sget-object v2, Landroidx/fragment/app/c0$c;->b:[I
    sget-object v3, Landroidx/fragment/app/c0$e$b;->d:Landroidx/fragment/app/c0$e$b;
    invoke-virtual { v3 }, Ljava/lang/Enum;->ordinal()I
    move-result v3
    aput v0, v2, v3
  :L3
    const/4 v2, 3
  :L4
    sget-object v3, Landroidx/fragment/app/c0$c;->b:[I
    sget-object v4, Landroidx/fragment/app/c0$e$b;->b:Landroidx/fragment/app/c0$e$b;
    invoke-virtual { v4 }, Ljava/lang/Enum;->ordinal()I
    move-result v4
    aput v2, v3, v4
  :L5
  .line 2
    invoke-static { }, Landroidx/fragment/app/c0$e$c;->values()[Landroidx/fragment/app/c0$e$c;
    move-result-object v3
    array-length v3, v3
    new-array v3, v3, [I
    sput-object v3, Landroidx/fragment/app/c0$c;->a:[I
  :L6
    sget-object v4, Landroidx/fragment/app/c0$e$c;->b:Landroidx/fragment/app/c0$e$c;
    invoke-virtual { v4 }, Ljava/lang/Enum;->ordinal()I
    move-result v4
    aput v1, v3, v4
  :L7
    sget-object v1, Landroidx/fragment/app/c0$c;->a:[I
    sget-object v3, Landroidx/fragment/app/c0$e$c;->c:Landroidx/fragment/app/c0$e$c;
    invoke-virtual { v3 }, Ljava/lang/Enum;->ordinal()I
    move-result v3
    aput v0, v1, v3
  :L8
    sget-object v0, Landroidx/fragment/app/c0$c;->a:[I
    sget-object v1, Landroidx/fragment/app/c0$e$c;->d:Landroidx/fragment/app/c0$e$c;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    aput v2, v0, v1
  :L9
    sget-object v0, Landroidx/fragment/app/c0$c;->a:[I
    sget-object v1, Landroidx/fragment/app/c0$e$c;->e:Landroidx/fragment/app/c0$e$c;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    const/4 v2, 4
    aput v2, v0, v1
  :L10
    return-void
.end method
