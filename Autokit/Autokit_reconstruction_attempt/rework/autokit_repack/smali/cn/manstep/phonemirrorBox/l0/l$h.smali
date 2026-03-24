.class Lcn/manstep/phonemirrorBox/l0/l$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/l0/l;->g1(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/l0/l;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/l;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$h;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$h;->b:Lcn/manstep/phonemirrorBox/l0/l;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/manstep/phonemirrorBox/l0/l;->i2(Lcn/manstep/phonemirrorBox/l0/l;Z)Z

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/f0/b;->g()V

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/f0/c;->s()V

    .line 4
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/g;->j()Lcn/manstep/phonemirrorBox/f0/g;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/f0/g;->g()V

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/f0/e;->g()V

    .line 6
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/f;->j()Lcn/manstep/phonemirrorBox/f0/f;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/f0/f;->g()V

    .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$h;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/l0/m;->g2()V

    return-void
.end method
