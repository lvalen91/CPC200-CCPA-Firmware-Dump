.class Lc/p/j0$a;
.super Lc/p/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/p/j0;->g0(Landroid/view/ViewGroup;Lc/p/s;ILc/p/s;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lc/p/j0;


# direct methods
.method constructor <init>(Lc/p/j0;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lc/p/j0$a;->d:Lc/p/j0;

    iput-object p2, p0, Lc/p/j0$a;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lc/p/j0$a;->b:Landroid/view/View;

    iput-object p4, p0, Lc/p/j0$a;->c:Landroid/view/View;

    invoke-direct {p0}, Lc/p/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/p/m;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lc/p/j0$a;->a:Landroid/view/ViewGroup;

    invoke-static {p1}, Lc/p/x;->a(Landroid/view/ViewGroup;)Lc/p/w;

    move-result-object p1

    iget-object v0, p0, Lc/p/j0$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lc/p/w;->c(Landroid/view/View;)V

    return-void
.end method

.method public b(Lc/p/m;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lc/p/j0$a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_14

    .line 2
    iget-object p1, p0, Lc/p/j0$a;->a:Landroid/view/ViewGroup;

    invoke-static {p1}, Lc/p/x;->a(Landroid/view/ViewGroup;)Lc/p/w;

    move-result-object p1

    iget-object v0, p0, Lc/p/j0$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lc/p/w;->a(Landroid/view/View;)V

    goto :goto_19

    .line 3
    :cond_14
    iget-object p1, p0, Lc/p/j0$a;->d:Lc/p/j0;

    invoke-virtual {p1}, Lc/p/m;->cancel()V

    :goto_19
    return-void
.end method

.method public e(Lc/p/m;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lc/p/j0$a;->c:Landroid/view/View;

    sget v1, Lc/p/j;->save_overlay_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lc/p/j0$a;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Lc/p/x;->a(Landroid/view/ViewGroup;)Lc/p/w;

    move-result-object v0

    iget-object v1, p0, Lc/p/j0$a;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Lc/p/w;->c(Landroid/view/View;)V

    .line 3
    invoke-virtual {p1, p0}, Lc/p/m;->O(Lc/p/m$f;)Lc/p/m;

    return-void
.end method
