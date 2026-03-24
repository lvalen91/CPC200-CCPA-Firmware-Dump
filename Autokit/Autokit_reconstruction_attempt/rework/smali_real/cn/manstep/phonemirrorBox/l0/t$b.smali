.class Lcn/manstep/phonemirrorBox/l0/t$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/l0/t;->B0(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/l0/t;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/t;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/t$b;->b:Lcn/manstep/phonemirrorBox/l0/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/t$b;->b:Lcn/manstep/phonemirrorBox/l0/t;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/t;->g2(Lcn/manstep/phonemirrorBox/l0/t;)Landroidx/fragment/app/n;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/n;->l()Landroidx/fragment/app/w;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/t$b;->b:Lcn/manstep/phonemirrorBox/l0/t;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/w;->o(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/w;->h()I

    return-void
.end method
