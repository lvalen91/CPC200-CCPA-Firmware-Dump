.class public Landroidx/recyclerview/widget/RecyclerView$j;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "j"
.end annotation

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method protected a(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;
  .registers 3
  .line 1
    new-instance p2, Landroid/widget/EdgeEffect;
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object p1
    invoke-direct { p2, p1 }, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V
    return-object p2
.end method
