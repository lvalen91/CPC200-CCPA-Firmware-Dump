.class Lcn/manstep/phonemirrorBox/customview/a$a;
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
.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lcn/manstep/phonemirrorBox/customview/a;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/customview/a;[Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/customview/a$a;->c:Lcn/manstep/phonemirrorBox/customview/a;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/customview/a$a;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/customview/a$a;->c:Lcn/manstep/phonemirrorBox/customview/a;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/customview/a;->u(Lcn/manstep/phonemirrorBox/customview/a;)I

    move-result p1

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/customview/a$a;->b:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_14

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/customview/a$a;->c:Lcn/manstep/phonemirrorBox/customview/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/manstep/phonemirrorBox/customview/a;->v(Lcn/manstep/phonemirrorBox/customview/a;I)I

    goto :goto_19

    .line 3
    :cond_14
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/customview/a$a;->c:Lcn/manstep/phonemirrorBox/customview/a;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/customview/a;->w(Lcn/manstep/phonemirrorBox/customview/a;)I

    .line 4
    :goto_19
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/customview/a$a;->c:Lcn/manstep/phonemirrorBox/customview/a;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/customview/a;->y(Lcn/manstep/phonemirrorBox/customview/a;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/customview/a$a;->b:[Ljava/lang/String;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/customview/a$a;->c:Lcn/manstep/phonemirrorBox/customview/a;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/customview/a;->u(Lcn/manstep/phonemirrorBox/customview/a;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/customview/a$a;->c:Lcn/manstep/phonemirrorBox/customview/a;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/customview/a;->z(Lcn/manstep/phonemirrorBox/customview/a;)V

    return-void
.end method
