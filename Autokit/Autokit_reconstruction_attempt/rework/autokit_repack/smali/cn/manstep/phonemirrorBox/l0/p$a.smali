.class Lcn/manstep/phonemirrorBox/l0/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/l0/p;->g1(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/l0/p;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/p;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/p$a;->b:Lcn/manstep/phonemirrorBox/l0/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/p$a;->b:Lcn/manstep/phonemirrorBox/l0/p;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/p;->h2(Lcn/manstep/phonemirrorBox/l0/p;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p1, 0x1

    return p1
.end method
