.class Lcn/manstep/phonemirrorBox/l0/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/l0/m;->g1(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/l0/m;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/m;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/m$a;->b:Lcn/manstep/phonemirrorBox/l0/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x4

    if-ne p2, p1, :cond_10

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_f

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/m$a;->b:Lcn/manstep/phonemirrorBox/l0/m;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/l0/m;->g2()V

    :cond_f
    return p2

    :cond_10
    const/4 p1, 0x0

    return p1
.end method
