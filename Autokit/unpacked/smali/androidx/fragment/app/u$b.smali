.class synthetic Landroidx/fragment/app/u$b;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/fragment/app/u;
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
    invoke-static { }, Landroidx/lifecycle/f$c;->values()[Landroidx/lifecycle/f$c;
    move-result-object v0
    array-length v0, v0
    new-array v0, v0, [I
    sput-object v0, Landroidx/fragment/app/u$b;->a:[I
  :L0
    sget-object v1, Landroidx/lifecycle/f$c;->f:Landroidx/lifecycle/f$c;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    const/4 v2, 1
    aput v2, v0, v1
  :L1
    sget-object v0, Landroidx/fragment/app/u$b;->a:[I
    sget-object v1, Landroidx/lifecycle/f$c;->e:Landroidx/lifecycle/f$c;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    const/4 v2, 2
    aput v2, v0, v1
  :L2
    sget-object v0, Landroidx/fragment/app/u$b;->a:[I
    sget-object v1, Landroidx/lifecycle/f$c;->d:Landroidx/lifecycle/f$c;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    const/4 v2, 3
    aput v2, v0, v1
  :L3
    sget-object v0, Landroidx/fragment/app/u$b;->a:[I
    sget-object v1, Landroidx/lifecycle/f$c;->c:Landroidx/lifecycle/f$c;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    const/4 v2, 4
    aput v2, v0, v1
  :L4
    return-void
.end method
