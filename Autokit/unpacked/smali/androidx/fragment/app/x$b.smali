.class Landroidx/fragment/app/x$b;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/fragment/app/x;->w(Landroidx/fragment/app/z;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Ljava/util/ArrayList;

.method constructor <init>(Ljava/util/ArrayList;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/fragment/app/x$b;->b:Ljava/util/ArrayList;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/x$b;->b:Ljava/util/ArrayList;
    const/4 v1, 4
    invoke-static { v0, v1 }, Landroidx/fragment/app/x;->B(Ljava/util/ArrayList;I)V
    return-void
.end method
