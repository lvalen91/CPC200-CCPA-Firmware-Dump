.class Landroidx/fragment/app/Fragment$b;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/fragment/app/Fragment;->f2()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/fragment/app/Fragment;

.method constructor <init>(Landroidx/fragment/app/Fragment;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/fragment/app/Fragment$b;->b:Landroidx/fragment/app/Fragment;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment$b;->b:Landroidx/fragment/app/Fragment;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroidx/fragment/app/Fragment;->w(Z)V
    return-void
.end method
