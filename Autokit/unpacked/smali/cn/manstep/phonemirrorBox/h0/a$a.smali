.class Lcn/manstep/phonemirrorBox/h0/a$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/h0/a;->c(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Lcn/manstep/phonemirrorBox/h0/a;

.method constructor <init>(Lcn/manstep/phonemirrorBox/h0/a;Ljava/lang/String;Ljava/lang/Runnable;)V
  .registers 4
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/h0/a$a;->d:Lcn/manstep/phonemirrorBox/h0/a;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/h0/a$a;->b:Ljava/lang/String;
    iput-object p3, p0, Lcn/manstep/phonemirrorBox/h0/a$a;->c:Ljava/lang/Runnable;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L1
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/h0/a$a;->d:Lcn/manstep/phonemirrorBox/h0/a;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/h0/a$a;->b:Ljava/lang/String;
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/h0/a;->a(Lcn/manstep/phonemirrorBox/h0/a;Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L1
  :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/h0/a$a;->c:Ljava/lang/Runnable;
    invoke-interface { v0 }, Ljava/lang/Runnable;->run()V
  :L1
    return-void
.end method
