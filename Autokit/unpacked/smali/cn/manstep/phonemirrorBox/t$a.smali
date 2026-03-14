.class final Lcn/manstep/phonemirrorBox/t$a;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnLongClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/t;->b(Landroid/view/View;Landroid/view/View$OnLongClickListener;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = null
.end annotation

.field final synthetic b:Landroid/view/View$OnLongClickListener;

.method constructor <init>(Landroid/view/View$OnLongClickListener;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/t$a;->b:Landroid/view/View$OnLongClickListener;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/t$a;->b:Landroid/view/View$OnLongClickListener;
    invoke-interface { v0, p1 }, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z
    move-result p1
    return p1
.end method
