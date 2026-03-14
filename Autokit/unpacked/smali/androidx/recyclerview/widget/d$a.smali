.class Landroidx/recyclerview/widget/d$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/d;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/recyclerview/widget/d;

.method constructor <init>(Landroidx/recyclerview/widget/d;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/d$a;->b:Landroidx/recyclerview/widget/d;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/d$a;->b:Landroidx/recyclerview/widget/d;
    const/16 v1, 500
    invoke-virtual { v0, v1 }, Landroidx/recyclerview/widget/d;->q(I)V
    return-void
.end method
