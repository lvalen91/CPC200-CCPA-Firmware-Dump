.class Lcn/manstep/phonemirrorBox/customview/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/customview/a;->D(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/customview/a;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/customview/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/customview/a$d;->b:Lcn/manstep/phonemirrorBox/customview/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/customview/a$d;->b:Lcn/manstep/phonemirrorBox/customview/a;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/customview/a;->A(Lcn/manstep/phonemirrorBox/customview/a;)Lcn/manstep/phonemirrorBox/customview/a$g;

    move-result-object p1

    if-eqz p1, :cond_78

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/customview/a$d;->b:Lcn/manstep/phonemirrorBox/customview/a;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/customview/a;->B(Lcn/manstep/phonemirrorBox/customview/a;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/16 v1, 0x32

    if-eqz v0, :cond_56

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/customview/a$d;->b:Lcn/manstep/phonemirrorBox/customview/a;

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/customview/a;->B(Lcn/manstep/phonemirrorBox/customview/a;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/manstep/phonemirrorBox/customview/a$f;

    iput v1, v2, Lcn/manstep/phonemirrorBox/customview/a$f;->a:I

    .line 4
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/customview/a$d;->b:Lcn/manstep/phonemirrorBox/customview/a;

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/customview/a;->A(Lcn/manstep/phonemirrorBox/customview/a;)Lcn/manstep/phonemirrorBox/customview/a$g;

    move-result-object v2

    iget-object v3, p0, Lcn/manstep/phonemirrorBox/customview/a$d;->b:Lcn/manstep/phonemirrorBox/customview/a;

    invoke-static {v3}, Lcn/manstep/phonemirrorBox/customview/a;->B(Lcn/manstep/phonemirrorBox/customview/a;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/manstep/phonemirrorBox/customview/a$f;

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/customview/a$f;->b:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lcn/manstep/phonemirrorBox/customview/a$g;->b(Ljava/lang/String;I)V

    goto :goto_16

    .line 5
    :cond_56
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/customview/a$d;->b:Lcn/manstep/phonemirrorBox/customview/a;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/customview/a;->C(Lcn/manstep/phonemirrorBox/customview/a;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "%d"

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/customview/a$d;->b:Lcn/manstep/phonemirrorBox/customview/a;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/customview/a;->z(Lcn/manstep/phonemirrorBox/customview/a;)V

    :cond_78
    return-void
.end method
