.class Landroidx/appcompat/app/g$b;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/app/g;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/appcompat/app/g;

.method constructor <init>(Landroidx/appcompat/app/g;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/app/g$b;->b:Landroidx/appcompat/app/g;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g$b;->b:Landroidx/appcompat/app/g;
    iget v1, v0, Landroidx/appcompat/app/g;->V:I
    and-int/lit8 v1, v1, 1
    const/4 v2, 0
    if-eqz v1, :L0
  .line 2
    invoke-virtual { v0, v2 }, Landroidx/appcompat/app/g;->a0(I)V
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/app/g$b;->b:Landroidx/appcompat/app/g;
    iget v1, v0, Landroidx/appcompat/app/g;->V:I
    and-int/lit16 v1, v1, 4096
    if-eqz v1, :L1
    const/16 v1, 108
  .line 4
    invoke-virtual { v0, v1 }, Landroidx/appcompat/app/g;->a0(I)V
  :L1
  .line 5
    iget-object v0, p0, Landroidx/appcompat/app/g$b;->b:Landroidx/appcompat/app/g;
    iput-boolean v2, v0, Landroidx/appcompat/app/g;->U:Z
  .line 6
    iput v2, v0, Landroidx/appcompat/app/g;->V:I
    return-void
.end method
