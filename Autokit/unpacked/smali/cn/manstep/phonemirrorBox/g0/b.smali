.class public Lcn/manstep/phonemirrorBox/g0/b;
.super Ljava/lang/Object;
.source "SourceFile"

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const-string v0, ""
  .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/g0/b;->a:Ljava/lang/String;
  .line 3
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/g0/b;->b:Ljava/lang/String;
    const/4 v0, 0
  .line 4
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/g0/b;->c:Z
  .line 5
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/g0/b;->a:Ljava/lang/String;
  .line 6
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/g0/b;->b:Ljava/lang/String;
  .line 7
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/g0/b;->c:Z
    return-void
.end method

.method public a()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/g0/b;->b:Ljava/lang/String;
    return-object v0
.end method

.method public b()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/g0/b;->a:Ljava/lang/String;
    return-object v0
.end method

.method public c()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/g0/b;->c:Z
    return v0
.end method

.method public d(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/g0/b;->c:Z
    return-void
.end method
