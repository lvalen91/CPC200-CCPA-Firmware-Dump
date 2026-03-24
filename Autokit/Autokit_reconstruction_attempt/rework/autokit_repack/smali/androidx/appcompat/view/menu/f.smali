.class public Landroidx/appcompat/view/menu/f;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field b:Landroidx/appcompat/view/menu/g;

.field private c:I

.field private d:Z

.field private final e:Z

.field private final f:Landroid/view/LayoutInflater;

.field private final g:I


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/g;Landroid/view/LayoutInflater;ZI)V
    .registers 6

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/appcompat/view/menu/f;->c:I

    .line 3
    iput-boolean p3, p0, Landroidx/appcompat/view/menu/f;->e:Z

    .line 4
    iput-object p2, p0, Landroidx/appcompat/view/menu/f;->f:Landroid/view/LayoutInflater;

    .line 5
    iput-object p1, p0, Landroidx/appcompat/view/menu/f;->b:Landroidx/appcompat/view/menu/g;

    .line 6
    iput p4, p0, Landroidx/appcompat/view/menu/f;->g:I

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/f;->a()V

    return-void
.end method


# virtual methods
.method a()V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/f;->b:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->v()Landroidx/appcompat/view/menu/i;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 2
    iget-object v1, p0, Landroidx/appcompat/view/menu/f;->b:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->z()Ljava/util/ArrayList;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_23

    .line 4
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/i;

    if-ne v4, v0, :cond_20

    .line 5
    iput v3, p0, Landroidx/appcompat/view/menu/f;->c:I

    return-void

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_23
    const/4 v0, -0x1

    .line 6
    iput v0, p0, Landroidx/appcompat/view/menu/f;->c:I

    return-void
.end method

.method public b()Landroidx/appcompat/view/menu/g;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/f;->b:Landroidx/appcompat/view/menu/g;

    return-object v0
.end method

.method public c(I)Landroidx/appcompat/view/menu/i;
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/f;->e:Z

    if-eqz v0, :cond_b

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/f;->b:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->z()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_11

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/view/menu/f;->b:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->E()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    :goto_11
    iget v1, p0, Landroidx/appcompat/view/menu/f;->c:I

    if-ltz v1, :cond_19

    if-lt p1, v1, :cond_19

    add-int/lit8 p1, p1, 0x1

    .line 4
    :cond_19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/i;

    return-object p1
.end method

.method public d(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/f;->d:Z

    return-void
.end method

.method public getCount()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/f;->e:Z

    if-eqz v0, :cond_b

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/f;->b:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->z()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_11

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/view/menu/f;->b:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->E()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    :goto_11
    iget v1, p0, Landroidx/appcompat/view/menu/f;->c:I

    if-gez v1, :cond_1a

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 5
    :cond_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/f;->c(I)Landroidx/appcompat/view/menu/i;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    const/4 v0, 0x0

    if-nez p2, :cond_b

    .line 1
    iget-object p2, p0, Landroidx/appcompat/view/menu/f;->f:Landroid/view/LayoutInflater;

    iget v1, p0, Landroidx/appcompat/view/menu/f;->g:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    :cond_b
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/f;->c(I)Landroidx/appcompat/view/menu/i;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/i;->getGroupId()I

    move-result p3

    add-int/lit8 v1, p1, -0x1

    if-ltz v1, :cond_20

    .line 3
    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/f;->c(I)Landroidx/appcompat/view/menu/i;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/i;->getGroupId()I

    move-result v1

    goto :goto_21

    :cond_20
    move v1, p3

    .line 4
    :goto_21
    move-object v2, p2

    check-cast v2, Landroidx/appcompat/view/menu/ListMenuItemView;

    iget-object v3, p0, Landroidx/appcompat/view/menu/f;->b:Landroidx/appcompat/view/menu/g;

    .line 5
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/g;->F()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_31

    if-eq p3, v1, :cond_31

    const/4 p3, 0x1

    goto :goto_32

    :cond_31
    const/4 p3, 0x0

    :goto_32
    invoke-virtual {v2, p3}, Landroidx/appcompat/view/menu/ListMenuItemView;->setGroupDividerEnabled(Z)V

    .line 6
    move-object p3, p2

    check-cast p3, Landroidx/appcompat/view/menu/n$a;

    .line 7
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/f;->d:Z

    if-eqz v1, :cond_3f

    .line 8
    invoke-virtual {v2, v4}, Landroidx/appcompat/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 9
    :cond_3f
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/f;->c(I)Landroidx/appcompat/view/menu/i;

    move-result-object p1

    invoke-interface {p3, p1, v0}, Landroidx/appcompat/view/menu/n$a;->f(Landroidx/appcompat/view/menu/i;I)V

    return-object p2
.end method

.method public notifyDataSetChanged()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/f;->a()V

    .line 2
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
