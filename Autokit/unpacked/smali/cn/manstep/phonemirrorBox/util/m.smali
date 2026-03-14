.class public Lcn/manstep/phonemirrorBox/util/m;
.super Ljava/lang/Object;
.source "SourceFile"

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/m;->a:Ljava/lang/String;
  .line 3
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/util/m;->b:Ljava/lang/String;
    const/4 p1, 0
  .line 4
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/util/m;->c:Z
    return-void
.end method

.method public a()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/m;->b:Ljava/lang/String;
    return-object v0
.end method

.method public b()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/m;->a:Ljava/lang/String;
    return-object v0
.end method

.method public c()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/util/m;->c:Z
    return v0
.end method

.method public d(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/util/m;->c:Z
    return-void
.end method
