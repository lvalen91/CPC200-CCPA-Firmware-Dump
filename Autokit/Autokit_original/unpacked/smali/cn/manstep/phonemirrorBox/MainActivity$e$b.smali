.class Lcn/manstep/phonemirrorBox/MainActivity$e$b;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/MainActivity$e;->run()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/MainActivity$e;

.method constructor <init>(Lcn/manstep/phonemirrorBox/MainActivity$e;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$e$b;->b:Lcn/manstep/phonemirrorBox/MainActivity$e;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 2
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$e$b;->b:Lcn/manstep/phonemirrorBox/MainActivity$e;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/MainActivity$e;->b:Lcn/manstep/phonemirrorBox/MainActivity;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/k;->finish()V
    return-void
.end method
