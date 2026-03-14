.class Landroidx/activity/result/ActivityResultRegistry$a;
.super Landroidx/activity/result/c;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/activity/result/ActivityResultRegistry;->j(Ljava/lang/String;Landroidx/lifecycle/j;Landroidx/activity/result/f/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Landroidx/activity/result/c<",
    "TI;>;"
  }
.end annotation

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Landroidx/activity/result/f/a;

.field final synthetic d:Landroidx/activity/result/ActivityResultRegistry;

.method constructor <init>(Landroidx/activity/result/ActivityResultRegistry;Ljava/lang/String;ILandroidx/activity/result/f/a;)V
  .registers 5
  .line 1
    iput-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$a;->d:Landroidx/activity/result/ActivityResultRegistry;
    iput-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$a;->a:Ljava/lang/String;
    iput p3, p0, Landroidx/activity/result/ActivityResultRegistry$a;->b:I
    iput-object p4, p0, Landroidx/activity/result/ActivityResultRegistry$a;->c:Landroidx/activity/result/f/a;
    invoke-direct { p0 }, Landroidx/activity/result/c;-><init>()V
    return-void
.end method

.method public b(Ljava/lang/Object;Landroidx/core/app/b;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TI;",
      "Landroidx/core/app/b;",
      ")V"
    }
  .end annotation
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$a;->d:Landroidx/activity/result/ActivityResultRegistry;
    iget-object v0, v0, Landroidx/activity/result/ActivityResultRegistry;->e:Ljava/util/ArrayList;
    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry$a;->a:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 2
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$a;->d:Landroidx/activity/result/ActivityResultRegistry;
    iget v1, p0, Landroidx/activity/result/ActivityResultRegistry$a;->b:I
    iget-object v2, p0, Landroidx/activity/result/ActivityResultRegistry$a;->c:Landroidx/activity/result/f/a;
    invoke-virtual { v0, v1, v2, p1, p2 }, Landroidx/activity/result/ActivityResultRegistry;->f(ILandroidx/activity/result/f/a;Ljava/lang/Object;Landroidx/core/app/b;)V
    return-void
.end method

.method public c()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$a;->d:Landroidx/activity/result/ActivityResultRegistry;
    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry$a;->a:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Landroidx/activity/result/ActivityResultRegistry;->l(Ljava/lang/String;)V
    return-void
.end method
