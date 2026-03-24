.class Landroidx/fragment/app/c0$d;
.super Landroidx/fragment/app/c0$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final h:Landroidx/fragment/app/u;


# direct methods
.method constructor <init>(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/c0$e$b;Landroidx/fragment/app/u;Lc/g/g/b;)V
    .registers 6

    .line 1
    invoke-virtual {p3}, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, Landroidx/fragment/app/c0$e;-><init>(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/c0$e$b;Landroidx/fragment/app/Fragment;Lc/g/g/b;)V

    .line 2
    iput-object p3, p0, Landroidx/fragment/app/c0$d;->h:Landroidx/fragment/app/u;

    return-void
.end method


# virtual methods
.method public c()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/c0$e;->c()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/c0$d;->h:Landroidx/fragment/app/u;

    invoke-virtual {v0}, Landroidx/fragment/app/u;->m()V

    return-void
.end method

.method l()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c0$e;->g()Landroidx/fragment/app/c0$e$b;

    move-result-object v0

    sget-object v1, Landroidx/fragment/app/c0$e$b;->c:Landroidx/fragment/app/c0$e$b;

    if-ne v0, v1, :cond_68

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/c0$d;->h:Landroidx/fragment/app/u;

    invoke-virtual {v0}, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 3
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->T1(Landroid/view/View;)V

    const/4 v2, 0x2

    .line 5
    invoke-static {v2}, Landroidx/fragment/app/n;->E0(I)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestFocus: Saved focused view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for Fragment "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 7
    :cond_38
    invoke-virtual {p0}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->L1()Landroid/view/View;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_4f

    .line 9
    iget-object v2, p0, Landroidx/fragment/app/c0$d;->h:Landroidx/fragment/app/u;

    invoke-virtual {v2}, Landroidx/fragment/app/u;->b()V

    .line 10
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 11
    :cond_4f
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_61

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_61

    const/4 v2, 0x4

    .line 12
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :cond_61
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->b0()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_68
    return-void
.end method
