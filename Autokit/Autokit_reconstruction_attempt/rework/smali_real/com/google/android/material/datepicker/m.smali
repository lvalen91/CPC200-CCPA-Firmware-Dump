.class Lcom/google/android/material/datepicker/m;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# static fields
.field static final g:I


# instance fields
.field final b:Lcom/google/android/material/datepicker/l;

.field final c:Lcom/google/android/material/datepicker/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/d<",
            "*>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/google/android/material/datepicker/c;

.field final f:Lcom/google/android/material/datepicker/a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/material/datepicker/s;->k()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    sput v0, Lcom/google/android/material/datepicker/m;->g:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/material/datepicker/l;Lcom/google/android/material/datepicker/d;Lcom/google/android/material/datepicker/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/l;",
            "Lcom/google/android/material/datepicker/d<",
            "*>;",
            "Lcom/google/android/material/datepicker/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/l;

    .line 3
    iput-object p2, p0, Lcom/google/android/material/datepicker/m;->c:Lcom/google/android/material/datepicker/d;

    .line 4
    iput-object p3, p0, Lcom/google/android/material/datepicker/m;->f:Lcom/google/android/material/datepicker/a;

    .line 5
    invoke-interface {p2}, Lcom/google/android/material/datepicker/d;->i()Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/m;->d:Ljava/util/Collection;

    return-void
.end method

.method private e(Landroid/content/Context;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->e:Lcom/google/android/material/datepicker/c;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lcom/google/android/material/datepicker/c;

    invoke-direct {v0, p1}, Lcom/google/android/material/datepicker/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/datepicker/m;->e:Lcom/google/android/material/datepicker/c;

    :cond_b
    return-void
.end method

.method private h(J)Z
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->c:Lcom/google/android/material/datepicker/d;

    invoke-interface {v0}, Lcom/google/android/material/datepicker/d;->i()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/material/datepicker/s;->a(J)J

    move-result-wide v3

    invoke-static {v1, v2}, Lcom/google/android/material/datepicker/s;->a(J)J

    move-result-wide v1

    cmp-long v5, v3, v1

    if-nez v5, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_28
    const/4 p1, 0x0

    return p1
.end method

.method private k(Landroid/widget/TextView;J)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->f:Lcom/google/android/material/datepicker/a;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/a;->o()Lcom/google/android/material/datepicker/a$c;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/google/android/material/datepicker/a$c;->e(J)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/datepicker/m;->h(J)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4
    iget-object p2, p0, Lcom/google/android/material/datepicker/m;->e:Lcom/google/android/material/datepicker/c;

    iget-object p2, p2, Lcom/google/android/material/datepicker/c;->b:Lcom/google/android/material/datepicker/b;

    goto :goto_3c

    .line 5
    :cond_1e
    invoke-static {}, Lcom/google/android/material/datepicker/s;->i()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long v2, v0, p2

    if-nez v2, :cond_2f

    .line 6
    iget-object p2, p0, Lcom/google/android/material/datepicker/m;->e:Lcom/google/android/material/datepicker/c;

    iget-object p2, p2, Lcom/google/android/material/datepicker/c;->c:Lcom/google/android/material/datepicker/b;

    goto :goto_3c

    .line 7
    :cond_2f
    iget-object p2, p0, Lcom/google/android/material/datepicker/m;->e:Lcom/google/android/material/datepicker/c;

    iget-object p2, p2, Lcom/google/android/material/datepicker/c;->a:Lcom/google/android/material/datepicker/b;

    goto :goto_3c

    :cond_34
    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 9
    iget-object p2, p0, Lcom/google/android/material/datepicker/m;->e:Lcom/google/android/material/datepicker/c;

    iget-object p2, p2, Lcom/google/android/material/datepicker/c;->g:Lcom/google/android/material/datepicker/b;

    .line 10
    :goto_3c
    invoke-virtual {p2, p1}, Lcom/google/android/material/datepicker/b;->d(Landroid/widget/TextView;)V

    return-void
.end method

.method private l(Lcom/google/android/material/datepicker/MaterialCalendarGridView;J)V
    .registers 6

    .line 1
    invoke-static {p2, p3}, Lcom/google/android/material/datepicker/l;->l(J)Lcom/google/android/material/datepicker/l;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/l;

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/l;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/material/datepicker/l;->p(J)I

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b()Lcom/google/android/material/datepicker/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/material/datepicker/m;->a(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/datepicker/m;->k(Landroid/widget/TextView;J)V

    :cond_28
    return-void
.end method


# virtual methods
.method a(I)I
    .registers 3

    add-int/lit8 p1, p1, -0x1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/m;->b()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method b()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/l;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/l;->n()I

    move-result v0

    return v0
.end method

.method public c(I)Ljava/lang/Long;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/l;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/l;->n()I

    move-result v0

    if-lt p1, v0, :cond_1e

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/m;->i()I

    move-result v0

    if-le p1, v0, :cond_f

    goto :goto_1e

    .line 2
    :cond_f
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/l;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/m;->j(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/l;->o(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_1e
    :goto_1e
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .registers 9

    .line 1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/datepicker/m;->e(Landroid/content/Context;)V

    .line 2
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez p2, :cond_1e

    .line 3
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 4
    sget v0, Ld/c/a/a/h;->mtrl_calendar_day:I

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    .line 5
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/m;->b()I

    move-result p2

    sub-int p2, p1, p2

    if-ltz p2, :cond_75

    .line 6
    iget-object p3, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/l;

    iget v2, p3, Lcom/google/android/material/datepicker/l;->f:I

    if-lt p2, v2, :cond_2d

    goto :goto_75

    :cond_2d
    const/4 v2, 0x1

    add-int/2addr p2, v2

    .line 7
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget-object p3, p3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-array v3, v2, [Ljava/lang/Object;

    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "%d"

    invoke-static {p3, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p3, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/l;

    invoke-virtual {p3, p2}, Lcom/google/android/material/datepicker/l;->o(I)J

    move-result-wide p2

    .line 11
    iget-object v3, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/l;

    iget v3, v3, Lcom/google/android/material/datepicker/l;->d:I

    invoke-static {}, Lcom/google/android/material/datepicker/l;->m()Lcom/google/android/material/datepicker/l;

    move-result-object v4

    iget v4, v4, Lcom/google/android/material/datepicker/l;->d:I

    if-ne v3, v4, :cond_67

    .line 12
    invoke-static {p2, p3}, Lcom/google/android/material/datepicker/e;->a(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_6e

    .line 13
    :cond_67
    invoke-static {p2, p3}, Lcom/google/android/material/datepicker/e;->d(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 14
    :goto_6e
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_7d

    :cond_75
    :goto_75
    const/16 p2, 0x8

    .line 16
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 18
    :goto_7d
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/m;->c(I)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_84

    return-object v0

    .line 19
    :cond_84
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/material/datepicker/m;->k(Landroid/widget/TextView;J)V

    return-object v0
.end method

.method f(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/l;

    iget v0, v0, Lcom/google/android/material/datepicker/l;->e:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method g(I)Z
    .registers 4

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 1
    iget-object v1, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/l;

    iget v1, v1, Lcom/google/android/material/datepicker/l;->e:I

    rem-int/2addr p1, v1

    if-nez p1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public getCount()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/l;

    iget v0, v0, Lcom/google/android/material/datepicker/l;->f:I

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/m;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/m;->c(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/l;

    iget v0, v0, Lcom/google/android/material/datepicker/l;->e:I

    div-int/2addr p1, v0

    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/datepicker/m;->d(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public hasStableIds()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method i()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/l;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/l;->n()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/l;

    iget v1, v1, Lcom/google/android/material/datepicker/l;->f:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method j(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->b:Lcom/google/android/material/datepicker/l;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/l;->n()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public m(Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->d:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/material/datepicker/m;->l(Lcom/google/android/material/datepicker/MaterialCalendarGridView;J)V

    goto :goto_6

    .line 3
    :cond_1a
    iget-object v0, p0, Lcom/google/android/material/datepicker/m;->c:Lcom/google/android/material/datepicker/d;

    if-eqz v0, :cond_42

    .line 4
    invoke-interface {v0}, Lcom/google/android/material/datepicker/d;->i()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/material/datepicker/m;->l(Lcom/google/android/material/datepicker/MaterialCalendarGridView;J)V

    goto :goto_26

    .line 6
    :cond_3a
    iget-object p1, p0, Lcom/google/android/material/datepicker/m;->c:Lcom/google/android/material/datepicker/d;

    invoke-interface {p1}, Lcom/google/android/material/datepicker/d;->i()Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/m;->d:Ljava/util/Collection;

    :cond_42
    return-void
.end method

.method n(I)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/m;->b()I

    move-result v0

    if-lt p1, v0, :cond_e

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/m;->i()I

    move-result v0

    if-gt p1, v0, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method
