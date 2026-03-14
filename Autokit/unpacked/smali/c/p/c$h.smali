.class Lc/p/c$h;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lc/p/c;->m(Landroid/view/ViewGroup;Lc/p/s;Lc/p/s;)Landroid/animation/Animator;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lc/p/c$k;

.field private mViewBounds:Lc/p/c$k;

.method constructor <init>(Lc/p/c;Lc/p/c$k;)V
  .registers 3
  .line 1
    iput-object p2, p0, Lc/p/c$h;->a:Lc/p/c$k;
    invoke-direct { p0 }, Landroid/animation/AnimatorListenerAdapter;-><init>()V
  .line 2
    iget-object p1, p0, Lc/p/c$h;->a:Lc/p/c$k;
    iput-object p1, p0, Lc/p/c$h;->mViewBounds:Lc/p/c$k;
    return-void
.end method
