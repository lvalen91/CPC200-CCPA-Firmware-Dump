.class synthetic Landroidx/fragment/app/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/fragment/app/c;
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
    invoke-static { }, Landroidx/fragment/app/c0$e$c;->values()[Landroidx/fragment/app/c0$e$c;
    move-result-object v0
    array-length v0, v0
    new-array v0, v0, [I
    sput-object v0, Landroidx/fragment/app/c$a;->a:[I
  :L0
    sget-object v1, Landroidx/fragment/app/c0$e$c;->d:Landroidx/fragment/app/c0$e$c;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    const/4 v2, 1
    aput v2, v0, v1
  :L1
    sget-object v0, Landroidx/fragment/app/c$a;->a:[I
    sget-object v1, Landroidx/fragment/app/c0$e$c;->e:Landroidx/fragment/app/c0$e$c;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    const/4 v2, 2
    aput v2, v0, v1
  :L2
    sget-object v0, Landroidx/fragment/app/c$a;->a:[I
    sget-object v1, Landroidx/fragment/app/c0$e$c;->b:Landroidx/fragment/app/c0$e$c;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    const/4 v2, 3
    aput v2, v0, v1
  :L3
    sget-object v0, Landroidx/fragment/app/c$a;->a:[I
    sget-object v1, Landroidx/fragment/app/c0$e$c;->c:Landroidx/fragment/app/c0$e$c;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    const/4 v2, 4
    aput v2, v0, v1
  :L4
    return-void
.end method
