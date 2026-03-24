.class Lcn/manstep/phonemirrorBox/a0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/a0;->l(Landroidx/fragment/app/n;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcn/manstep/phonemirrorBox/a0;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/a0;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/a0$b;->c:Lcn/manstep/phonemirrorBox/a0;

    iput p2, p0, Lcn/manstep/phonemirrorBox/a0$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/a0$b;->c:Lcn/manstep/phonemirrorBox/a0;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/a0;->p(Lcn/manstep/phonemirrorBox/a0;)Lcn/manstep/phonemirrorBox/c$a;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/a0$b;->c:Lcn/manstep/phonemirrorBox/a0;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/a0;->p(Lcn/manstep/phonemirrorBox/a0;)Lcn/manstep/phonemirrorBox/c$a;

    move-result-object p1

    iget v0, p0, Lcn/manstep/phonemirrorBox/a0$b;->b:I

    invoke-interface {p1, v0}, Lcn/manstep/phonemirrorBox/c$a;->e(I)V

    :cond_13
    return-void
.end method
