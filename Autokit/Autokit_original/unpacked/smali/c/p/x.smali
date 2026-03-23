.class Lc/p/x;
.super Ljava/lang/Object;
.source "SourceFile"

.field private static a:Z = true

.method static constructor <clinit>()V
  .registers 1
    return-void
.end method

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static a(Landroid/view/ViewGroup;)Lc/p/w;
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 18
    if-lt v0, v1, :L0
  .line 2
    new-instance v0, Lc/p/v;
    invoke-direct { v0, p0 }, Lc/p/v;-><init>(Landroid/view/ViewGroup;)V
    return-object v0
  :L0
  .line 3
    invoke-static { p0 }, Lc/p/u;->g(Landroid/view/ViewGroup;)Lc/p/u;
    move-result-object p0
    return-object p0
.end method

.method private static b(Landroid/view/ViewGroup;Z)V
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "NewApi"
    }
  .end annotation
  .catch Ljava/lang/NoSuchMethodError; { :L0 .. :L1 } :L2
  .registers 3
  .line 1
    sget-boolean v0, Lc/p/x;->a:Z
    if-eqz v0, :L3
  :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/view/ViewGroup;->suppressLayout(Z)V
  :L1
    goto :L3
  :L2
    const/4 p0, 0
  .line 3
    sput-boolean p0, Lc/p/x;->a:Z
  :L3
    return-void
.end method

.method static c(Landroid/view/ViewGroup;Z)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 29
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/view/ViewGroup;->suppressLayout(Z)V
    goto :L2
  :L0
    const/16 v1, 18
    if-lt v0, v1, :L1
  .line 3
    invoke-static { p0, p1 }, Lc/p/x;->b(Landroid/view/ViewGroup;Z)V
    goto :L2
  :L1
  .line 4
    invoke-static { p0, p1 }, Lc/p/y;->b(Landroid/view/ViewGroup;Z)V
  :L2
    return-void
.end method
