.class public Lcn/manstep/phonemirrorBox/d0/f;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/manstep/phonemirrorBox/d0/f$b;
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/manstep/phonemirrorBox/g0/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcn/manstep/phonemirrorBox/g0/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/d0/f;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/d0/f;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d0/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d0/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    if-nez p2, :cond_2f

    .line 1
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/d0/f;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c0023

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcn/manstep/phonemirrorBox/d0/f$b;

    invoke-direct {p3, p0, v0}, Lcn/manstep/phonemirrorBox/d0/f$b;-><init>(Lcn/manstep/phonemirrorBox/d0/f;Lcn/manstep/phonemirrorBox/d0/f$a;)V

    const v0, 0x7f09027d

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcn/manstep/phonemirrorBox/d0/f$b;->a:Landroid/widget/TextView;

    const v0, 0x7f090126

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcn/manstep/phonemirrorBox/d0/f$b;->b:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_35

    .line 6
    :cond_2f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/manstep/phonemirrorBox/d0/f$b;

    .line 7
    :goto_35
    iget-object v0, p3, Lcn/manstep/phonemirrorBox/d0/f$b;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/d0/f;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/g0/a;

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/g0/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p3, p3, Lcn/manstep/phonemirrorBox/d0/f$b;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d0/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/manstep/phonemirrorBox/g0/a;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/g0/a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method
