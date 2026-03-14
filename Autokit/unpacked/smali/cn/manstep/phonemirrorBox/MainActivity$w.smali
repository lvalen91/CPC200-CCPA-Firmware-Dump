.class Lcn/manstep/phonemirrorBox/MainActivity$w;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/MainActivity;->x(Z)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/MainActivity;

.method constructor <init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$w;->b:Lcn/manstep/phonemirrorBox/MainActivity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity$w;->b:Lcn/manstep/phonemirrorBox/MainActivity;
    const/16 v1, 11
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/MainActivity;->c1(I)V
    return-void
.end method
