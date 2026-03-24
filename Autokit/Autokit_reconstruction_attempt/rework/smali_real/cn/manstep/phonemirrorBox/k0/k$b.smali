.class Lcn/manstep/phonemirrorBox/k0/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/k0/k;->g1(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/k0/k;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/k0/k;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/k$b;->b:Lcn/manstep/phonemirrorBox/k0/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/k$b;->b:Lcn/manstep/phonemirrorBox/k0/k;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/k0/k;->w2(Lcn/manstep/phonemirrorBox/k0/k;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/k$b;->b:Lcn/manstep/phonemirrorBox/k0/k;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/k0/k;->w2(Lcn/manstep/phonemirrorBox/k0/k;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/k$b;->b:Lcn/manstep/phonemirrorBox/k0/k;

    invoke-virtual {p1}, Landroidx/fragment/app/d;->j2()V

    :cond_16
    return-void
.end method
