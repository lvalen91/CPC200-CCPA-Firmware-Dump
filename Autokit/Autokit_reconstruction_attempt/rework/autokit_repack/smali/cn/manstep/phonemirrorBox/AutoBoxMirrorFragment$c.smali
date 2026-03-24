.class Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/x0/d$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;->L0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment$c;->b:Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public k()V
    .registers 1

    return-void
.end method

.method public m(I)V
    .registers 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2e

    .line 1
    sget-boolean p1, Lcn/manstep/phonemirrorBox/p;->i:Z

    if-eqz p1, :cond_2e

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment$c;->b:Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;->h2(Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;)Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->l()V

    .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment$c;->b:Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;->g2(Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment$c;->b:Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;->h2(Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;)Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment$c;->b:Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;->g2(Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment$c;->b:Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;->h2(Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;)Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :cond_2e
    return-void
.end method
