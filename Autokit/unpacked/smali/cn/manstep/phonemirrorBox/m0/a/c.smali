.class public final Lcn/manstep/phonemirrorBox/m0/a/c;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnLongClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/m0/a/c$a;
  }
.end annotation

.field final b:Lcn/manstep/phonemirrorBox/m0/a/c$a;

.field final c:I

.method public constructor <init>(Lcn/manstep/phonemirrorBox/m0/a/c$a;I)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/m0/a/c;->b:Lcn/manstep/phonemirrorBox/m0/a/c$a;
  .line 3
    iput p2, p0, Lcn/manstep/phonemirrorBox/m0/a/c;->c:I
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/m0/a/c;->b:Lcn/manstep/phonemirrorBox/m0/a/c$a;
    iget v1, p0, Lcn/manstep/phonemirrorBox/m0/a/c;->c:I
    invoke-interface { v0, v1, p1 }, Lcn/manstep/phonemirrorBox/m0/a/c$a;->a(ILandroid/view/View;)Z
    move-result p1
    return p1
.end method
