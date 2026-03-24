.class Lcn/manstep/phonemirrorBox/l0/o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/l0/o;->g1(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/l0/o;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/o;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o$b;->b:Lcn/manstep/phonemirrorBox/l0/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o$b;->b:Lcn/manstep/phonemirrorBox/l0/o;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/o;->h2(Lcn/manstep/phonemirrorBox/l0/o;)Lcn/manstep/phonemirrorBox/util/l;

    move-result-object p1

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/o$b;->b:Lcn/manstep/phonemirrorBox/l0/o;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcn/manstep/phonemirrorBox/util/l;->q(Landroid/content/Context;Z)V

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o$b;->b:Lcn/manstep/phonemirrorBox/l0/o;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/o;->i2(Lcn/manstep/phonemirrorBox/l0/o;)Lcn/manstep/phonemirrorBox/i0/m;

    move-result-object p1

    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/m;->y:Lcn/manstep/phonemirrorBox/widget/WaveformView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
