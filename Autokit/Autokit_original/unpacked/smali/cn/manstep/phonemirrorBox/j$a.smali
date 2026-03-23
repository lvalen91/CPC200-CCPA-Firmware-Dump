.class final Lcn/manstep/phonemirrorBox/j$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/j;->c(Landroid/view/View;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = null
.end annotation

.field final synthetic b:Landroid/view/View;

.field final synthetic c:I

.method constructor <init>(Landroid/view/View;I)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/j$a;->b:Landroid/view/View;
    iput p2, p0, Lcn/manstep/phonemirrorBox/j$a;->c:I
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/j$a;->b:Landroid/view/View;
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Landroid/view/View;->setClipToOutline(Z)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/j$a;->b:Landroid/view/View;
    new-instance v1, Lcn/manstep/phonemirrorBox/j$a$a;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/j$a$a;-><init>(Lcn/manstep/phonemirrorBox/j$a;)V
    invoke-virtual { v0, v1 }, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
    return-void
.end method
