.class Landroidx/recyclerview/widget/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/p;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "a"
.end annotation

.field static d:Lc/g/j/e;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/g/j/e<",
      "Landroidx/recyclerview/widget/p$a;",
      ">;"
    }
  .end annotation
.end field

.field a:I

.field b:Landroidx/recyclerview/widget/RecyclerView$k$c;

.field c:Landroidx/recyclerview/widget/RecyclerView$k$c;

.method static constructor <clinit>()V
  .registers 2
  .line 1
    new-instance v0, Lc/g/j/f;
    const/16 v1, 20
    invoke-direct { v0, v1 }, Lc/g/j/f;-><init>(I)V
    sput-object v0, Landroidx/recyclerview/widget/p$a;->d:Lc/g/j/e;
    return-void
.end method

.method private constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static a()V
  .registers 1
  :L0
  .line 1
    sget-object v0, Landroidx/recyclerview/widget/p$a;->d:Lc/g/j/e;
    invoke-interface { v0 }, Lc/g/j/e;->b()Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :L1
    goto :L0
  :L1
    return-void
.end method

.method static b()Landroidx/recyclerview/widget/p$a;
  .registers 1
  .line 1
    sget-object v0, Landroidx/recyclerview/widget/p$a;->d:Lc/g/j/e;
    invoke-interface { v0 }, Lc/g/j/e;->b()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/recyclerview/widget/p$a;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroidx/recyclerview/widget/p$a;
    invoke-direct { v0 }, Landroidx/recyclerview/widget/p$a;-><init>()V
  :L0
    return-object v0
.end method

.method static c(Landroidx/recyclerview/widget/p$a;)V
  .registers 2
    const/4 v0, 0
  .line 1
    iput v0, p0, Landroidx/recyclerview/widget/p$a;->a:I
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Landroidx/recyclerview/widget/p$a;->b:Landroidx/recyclerview/widget/RecyclerView$k$c;
  .line 3
    iput-object v0, p0, Landroidx/recyclerview/widget/p$a;->c:Landroidx/recyclerview/widget/RecyclerView$k$c;
  .line 4
    sget-object v0, Landroidx/recyclerview/widget/p$a;->d:Lc/g/j/e;
    invoke-interface { v0, p0 }, Lc/g/j/e;->a(Ljava/lang/Object;)Z
    return-void
.end method
