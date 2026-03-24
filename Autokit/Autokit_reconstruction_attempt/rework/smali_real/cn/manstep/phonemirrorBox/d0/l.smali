.class public Lcn/manstep/phonemirrorBox/d0/l;
.super Lcn/manstep/phonemirrorBox/d0/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/manstep/phonemirrorBox/d0/l$b;
    }
.end annotation


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/manstep/phonemirrorBox/g0/c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcn/manstep/phonemirrorBox/g0/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/d0/g;-><init>()V

    .line 2
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/d0/l;->c:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/d0/l;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public b(I)Lcn/manstep/phonemirrorBox/g0/c;
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d0/l;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/manstep/phonemirrorBox/g0/c;

    return-object p1
.end method

.method public getCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d0/l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcn/manstep/phonemirrorBox/d0/l;->b(I)Lcn/manstep/phonemirrorBox/g0/c;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    if-nez p2, :cond_3a

    .line 1
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/d0/l;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c0096

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcn/manstep/phonemirrorBox/d0/l$b;

    invoke-direct {p3, v0}, Lcn/manstep/phonemirrorBox/d0/l$b;-><init>(Lcn/manstep/phonemirrorBox/d0/l$a;)V

    const v0, 0x7f09024e

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcn/manstep/phonemirrorBox/d0/l$b;->a:Landroid/widget/TextView;

    const v0, 0x7f090119

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcn/manstep/phonemirrorBox/d0/l$b;->b:Landroid/widget/ImageView;

    const v0, 0x7f09013d

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p3, Lcn/manstep/phonemirrorBox/d0/l$b;->c:Landroid/widget/LinearLayout;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_40

    .line 7
    :cond_3a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/manstep/phonemirrorBox/d0/l$b;

    .line 8
    :goto_40
    iget v0, p0, Lcn/manstep/phonemirrorBox/d0/g;->b:I

    if-ne v0, p1, :cond_53

    .line 9
    iget-object v0, p3, Lcn/manstep/phonemirrorBox/d0/l$b;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object v0, p3, Lcn/manstep/phonemirrorBox/d0/l$b;->c:Landroid/widget/LinearLayout;

    const v1, 0x7f0800ec

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_61

    .line 11
    :cond_53
    iget-object v0, p3, Lcn/manstep/phonemirrorBox/d0/l$b;->b:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object v0, p3, Lcn/manstep/phonemirrorBox/d0/l$b;->c:Landroid/widget/LinearLayout;

    const v1, 0x7f0800eb

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 13
    :goto_61
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d0/l;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/manstep/phonemirrorBox/g0/c;

    .line 14
    iget-object p3, p3, Lcn/manstep/phonemirrorBox/d0/l$b;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/g0/c;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
