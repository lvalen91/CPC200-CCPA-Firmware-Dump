.class Landroidx/recyclerview/widget/RecyclerView$t$a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/RecyclerView$t;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "a"
.end annotation

.field final a:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Landroidx/recyclerview/widget/RecyclerView$c0;",
      ">;"
    }
  .end annotation
.end field

.field b:I

.field c:J

.field d:J

.method constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->a:Ljava/util/ArrayList;
    const/4 v0, 5
  .line 3
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->b:I
    const-wide/16 v0, 0
  .line 4
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->c:J
  .line 5
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->d:J
    return-void
.end method
