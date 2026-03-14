.class Lcn/manstep/phonemirrorBox/z$h;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/z;->o(I)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/z;

.method constructor <init>(Lcn/manstep/phonemirrorBox/z;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/z$h;->b:Lcn/manstep/phonemirrorBox/z;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z$h;->b:Lcn/manstep/phonemirrorBox/z;
    const/4 v1, 0
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/z;->j2(Lcn/manstep/phonemirrorBox/z;Z)Z
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z$h;->b:Lcn/manstep/phonemirrorBox/z;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/z;->n2(Lcn/manstep/phonemirrorBox/z;)V
    return-void
.end method
