.class Lcn/manstep/phonemirrorBox/k0/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/k0/a;->g1(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/k0/a;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/k0/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/a$c;->b:Lcn/manstep/phonemirrorBox/k0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/a$c;->b:Lcn/manstep/phonemirrorBox/k0/a;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/k0/a;->y2(Lcn/manstep/phonemirrorBox/k0/a;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/a$c;->b:Lcn/manstep/phonemirrorBox/k0/a;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/k0/a;->y2(Lcn/manstep/phonemirrorBox/k0/a;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 3
    :cond_11
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/a$c;->b:Lcn/manstep/phonemirrorBox/k0/a;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/k0/a;->j2()V

    return-void
.end method
