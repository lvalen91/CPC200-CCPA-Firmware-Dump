.class Lcn/manstep/phonemirrorBox/util/d0$c$a$a;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/util/d0$c$a;->c(Ljava/lang/String;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/util/d0$c$a;

.method constructor <init>(Lcn/manstep/phonemirrorBox/util/d0$c$a;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/d0$c$a$a;->b:Lcn/manstep/phonemirrorBox/util/d0$c$a;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 3
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/d0$c$a$a;->b:Lcn/manstep/phonemirrorBox/util/d0$c$a;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/util/d0$c$a;->c:Lcn/manstep/phonemirrorBox/util/d0$c;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/util/d0$c;->g:Lcn/manstep/phonemirrorBox/util/d0;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/d0;->d(Lcn/manstep/phonemirrorBox/util/d0;)Landroid/content/Context;
    move-result-object p1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/d0$c$a$a;->b:Lcn/manstep/phonemirrorBox/util/d0$c$a;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/util/d0$c$a;->b:Ljava/lang/String;
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/util/c0;->o(Landroid/content/Context;Ljava/lang/String;)V
    return-void
.end method
