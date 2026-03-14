.class Landroidx/activity/result/ActivityResultRegistry$c;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/activity/result/ActivityResultRegistry;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "c"
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "<O:",
    "Ljava/lang/Object;",
    ">",
    "Ljava/lang/Object;"
  }
.end annotation

.field final a:Landroidx/activity/result/b;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroidx/activity/result/b<",
      "TO;>;"
    }
  .end annotation
.end field

.field final b:Landroidx/activity/result/f/a;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroidx/activity/result/f/a<",
      "*TO;>;"
    }
  .end annotation
.end field

.method constructor <init>(Landroidx/activity/result/b;Landroidx/activity/result/f/a;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/activity/result/b<",
      "TO;>;",
      "Landroidx/activity/result/f/a<",
      "*TO;>;)V"
    }
  .end annotation
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$c;->a:Landroidx/activity/result/b;
  .line 3
    iput-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$c;->b:Landroidx/activity/result/f/a;
    return-void
.end method
