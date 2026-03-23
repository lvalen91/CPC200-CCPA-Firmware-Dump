.class Landroidx/fragment/app/Fragment$c;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/fragment/app/Fragment;->w(Z)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/fragment/app/c0;

.method constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/c0;)V
  .registers 3
  .line 1
    iput-object p2, p0, Landroidx/fragment/app/Fragment$c;->b:Landroidx/fragment/app/c0;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment$c;->b:Landroidx/fragment/app/c0;
    invoke-virtual { v0 }, Landroidx/fragment/app/c0;->g()V
    return-void
.end method
