.class Landroidx/recyclerview/widget/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/o$b;,
        Landroidx/recyclerview/widget/o$a;
    }
.end annotation


# instance fields
.field final a:Landroidx/recyclerview/widget/o$b;

.field b:Landroidx/recyclerview/widget/o$a;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/o$b;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/recyclerview/widget/o;->a:Landroidx/recyclerview/widget/o$b;

    .line 3
    new-instance p1, Landroidx/recyclerview/widget/o$a;

    invoke-direct {p1}, Landroidx/recyclerview/widget/o$a;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;

    return-void
.end method


# virtual methods
.method a(IIII)Landroid/view/View;
    .registers 13

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/o;->a:Landroidx/recyclerview/widget/o$b;

    invoke-interface {v0}, Landroidx/recyclerview/widget/o$b;->c()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/o;->a:Landroidx/recyclerview/widget/o$b;

    invoke-interface {v1}, Landroidx/recyclerview/widget/o$b;->b()I

    move-result v1

    if-le p2, p1, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, -0x1

    :goto_11
    const/4 v3, 0x0

    :goto_12
    if-eq p1, p2, :cond_57

    .line 3
    iget-object v4, p0, Landroidx/recyclerview/widget/o;->a:Landroidx/recyclerview/widget/o$b;

    invoke-interface {v4, p1}, Landroidx/recyclerview/widget/o$b;->a(I)Landroid/view/View;

    move-result-object v4

    .line 4
    iget-object v5, p0, Landroidx/recyclerview/widget/o;->a:Landroidx/recyclerview/widget/o$b;

    invoke-interface {v5, v4}, Landroidx/recyclerview/widget/o$b;->e(Landroid/view/View;)I

    move-result v5

    .line 5
    iget-object v6, p0, Landroidx/recyclerview/widget/o;->a:Landroidx/recyclerview/widget/o$b;

    invoke-interface {v6, v4}, Landroidx/recyclerview/widget/o$b;->d(Landroid/view/View;)I

    move-result v6

    .line 6
    iget-object v7, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;

    invoke-virtual {v7, v0, v1, v5, v6}, Landroidx/recyclerview/widget/o$a;->e(IIII)V

    if-eqz p3, :cond_40

    .line 7
    iget-object v5, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/o$a;->d()V

    .line 8
    iget-object v5, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;

    invoke-virtual {v5, p3}, Landroidx/recyclerview/widget/o$a;->a(I)V

    .line 9
    iget-object v5, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/o$a;->b()Z

    move-result v5

    if-eqz v5, :cond_40

    return-object v4

    :cond_40
    if-eqz p4, :cond_55

    .line 10
    iget-object v5, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/o$a;->d()V

    .line 11
    iget-object v5, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;

    invoke-virtual {v5, p4}, Landroidx/recyclerview/widget/o$a;->a(I)V

    .line 12
    iget-object v5, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/o$a;->b()Z

    move-result v5

    if-eqz v5, :cond_55

    move-object v3, v4

    :cond_55
    add-int/2addr p1, v2

    goto :goto_12

    :cond_57
    return-object v3
.end method

.method b(Landroid/view/View;I)Z
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;

    iget-object v1, p0, Landroidx/recyclerview/widget/o;->a:Landroidx/recyclerview/widget/o$b;

    invoke-interface {v1}, Landroidx/recyclerview/widget/o$b;->c()I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/o;->a:Landroidx/recyclerview/widget/o$b;

    invoke-interface {v2}, Landroidx/recyclerview/widget/o$b;->b()I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/o;->a:Landroidx/recyclerview/widget/o$b;

    .line 2
    invoke-interface {v3, p1}, Landroidx/recyclerview/widget/o$b;->e(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/o;->a:Landroidx/recyclerview/widget/o$b;

    invoke-interface {v4, p1}, Landroidx/recyclerview/widget/o$b;->d(Landroid/view/View;)I

    move-result p1

    .line 3
    invoke-virtual {v0, v1, v2, v3, p1}, Landroidx/recyclerview/widget/o$a;->e(IIII)V

    if-eqz p2, :cond_30

    .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/o$a;->d()V

    .line 5
    iget-object p1, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/o$a;->a(I)V

    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/o$a;->b()Z

    move-result p1

    return p1

    :cond_30
    const/4 p1, 0x0

    return p1
.end method
