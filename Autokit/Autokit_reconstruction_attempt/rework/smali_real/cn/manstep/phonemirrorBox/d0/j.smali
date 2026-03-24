.class public Lcn/manstep/phonemirrorBox/d0/j;
.super Landroidx/recyclerview/widget/RecyclerView$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/manstep/phonemirrorBox/d0/j$b;,
        Lcn/manstep/phonemirrorBox/d0/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$f<",
        "Lcn/manstep/phonemirrorBox/d0/j$a;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcn/manstep/phonemirrorBox/d0/i;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/manstep/phonemirrorBox/util/o;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcn/manstep/phonemirrorBox/d0/i$b;

.field private g:Lcn/manstep/phonemirrorBox/d0/j$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcn/manstep/phonemirrorBox/d0/i$b;Lcn/manstep/phonemirrorBox/d0/j$b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcn/manstep/phonemirrorBox/util/o;",
            ">;",
            "Lcn/manstep/phonemirrorBox/d0/i$b;",
            "Lcn/manstep/phonemirrorBox/d0/j$b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$f;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/d0/j;->c:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/d0/j;->e:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcn/manstep/phonemirrorBox/d0/j;->f:Lcn/manstep/phonemirrorBox/d0/i$b;

    .line 5
    iput-object p4, p0, Lcn/manstep/phonemirrorBox/d0/j;->g:Lcn/manstep/phonemirrorBox/d0/j$b;

    return-void
.end method


# virtual methods
.method public c()I
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "folder size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/d0/j;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHARE"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d0/j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic j(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .line 1
    check-cast p1, Lcn/manstep/phonemirrorBox/d0/j$a;

    invoke-virtual {p0, p1, p2}, Lcn/manstep/phonemirrorBox/d0/j;->w(Lcn/manstep/phonemirrorBox/d0/j$a;I)V

    return-void
.end method

.method public bridge synthetic l(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/manstep/phonemirrorBox/d0/j;->x(Landroid/view/ViewGroup;I)Lcn/manstep/phonemirrorBox/d0/j$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic u(Lcn/manstep/phonemirrorBox/util/o;Lcn/manstep/phonemirrorBox/d0/j$a;Landroid/widget/CompoundButton;Z)V
    .registers 5

    .line 1
    invoke-virtual {p1, p4}, Lcn/manstep/phonemirrorBox/util/o;->d(Z)V

    .line 2
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/util/o;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/manstep/phonemirrorBox/util/m;

    .line 3
    invoke-virtual {p3, p4}, Lcn/manstep/phonemirrorBox/util/m;->d(Z)V

    goto :goto_b

    .line 4
    :cond_1b
    iget-object p1, p2, Lcn/manstep/phonemirrorBox/d0/j$a;->v:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcn/manstep/phonemirrorBox/d0/e;

    invoke-direct {p2, p0}, Lcn/manstep/phonemirrorBox/d0/e;-><init>(Lcn/manstep/phonemirrorBox/d0/j;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic v(Lcn/manstep/phonemirrorBox/util/o;Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d0/j;->g:Lcn/manstep/phonemirrorBox/d0/j$b;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p2, p1}, Lcn/manstep/phonemirrorBox/d0/j$b;->a(Landroid/view/View;Lcn/manstep/phonemirrorBox/util/o;)V

    :cond_7
    return-void
.end method

.method public w(Lcn/manstep/phonemirrorBox/d0/j$a;I)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d0/j;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/manstep/phonemirrorBox/util/o;

    .line 2
    iget-object v0, p1, Lcn/manstep/phonemirrorBox/d0/j$a;->t:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcn/manstep/phonemirrorBox/util/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p1, Lcn/manstep/phonemirrorBox/d0/j$a;->u:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Lcn/manstep/phonemirrorBox/util/o;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4
    new-instance v0, Lcn/manstep/phonemirrorBox/d0/i;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/d0/j;->c:Landroid/content/Context;

    invoke-virtual {p2}, Lcn/manstep/phonemirrorBox/util/o;->a()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcn/manstep/phonemirrorBox/d0/j;->f:Lcn/manstep/phonemirrorBox/d0/i$b;

    invoke-direct {v0, v1, v2, v3}, Lcn/manstep/phonemirrorBox/d0/i;-><init>(Landroid/content/Context;Ljava/util/List;Lcn/manstep/phonemirrorBox/d0/i$b;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/d0/j;->d:Lcn/manstep/phonemirrorBox/d0/i;

    .line 5
    iget-object v1, p1, Lcn/manstep/phonemirrorBox/d0/j$a;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$f;)V

    .line 6
    iget-object v0, p1, Lcn/manstep/phonemirrorBox/d0/j$a;->u:Landroid/widget/CheckBox;

    new-instance v1, Lcn/manstep/phonemirrorBox/d0/c;

    invoke-direct {v1, p0, p2, p1}, Lcn/manstep/phonemirrorBox/d0/c;-><init>(Lcn/manstep/phonemirrorBox/d0/j;Lcn/manstep/phonemirrorBox/util/o;Lcn/manstep/phonemirrorBox/d0/j$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;

    new-instance v0, Lcn/manstep/phonemirrorBox/d0/d;

    invoke-direct {v0, p0, p2}, Lcn/manstep/phonemirrorBox/d0/d;-><init>(Lcn/manstep/phonemirrorBox/d0/j;Lcn/manstep/phonemirrorBox/util/o;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public x(Landroid/view/ViewGroup;I)Lcn/manstep/phonemirrorBox/d0/j$a;
    .registers 5

    .line 1
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/d0/j;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0057

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcn/manstep/phonemirrorBox/d0/j$a;

    invoke-direct {p2, p1}, Lcn/manstep/phonemirrorBox/d0/j$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method
