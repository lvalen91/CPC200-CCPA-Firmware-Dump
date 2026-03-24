.class Lcn/manstep/phonemirrorBox/l0/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/l0/k;->g1(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/l0/k;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/k;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/k$b;->b:Lcn/manstep/phonemirrorBox/l0/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/k$b;->b:Lcn/manstep/phonemirrorBox/l0/k;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcn/manstep/phonemirrorBox/l0/s;

    if-eqz p1, :cond_18

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/k$b;->b:Lcn/manstep/phonemirrorBox/l0/k;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcn/manstep/phonemirrorBox/l0/s;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/k$b;->b:Lcn/manstep/phonemirrorBox/l0/k;

    invoke-interface {p1, v0}, Lcn/manstep/phonemirrorBox/l0/s;->f(Landroidx/fragment/app/Fragment;)V

    goto :goto_1d

    .line 3
    :cond_18
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/k$b;->b:Lcn/manstep/phonemirrorBox/l0/k;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/l0/m;->g2()V

    :goto_1d
    return-void
.end method
