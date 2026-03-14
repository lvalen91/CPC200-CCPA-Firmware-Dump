.class Lcn/manstep/phonemirrorBox/MainActivity$c0;
.super Ljava/lang/Object;
.implements Lcn/manstep/phonemirrorBox/util/b0$d;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/MainActivity;->O0()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/MainActivity;

.method constructor <init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$c0;->a:Lcn/manstep/phonemirrorBox/MainActivity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)V
  .registers 16
  .line 1
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L0
    invoke-static { p2 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L0
  .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity$c0;->a:Lcn/manstep/phonemirrorBox/MainActivity;
    const/4 v8, 1
    move v2, p6
    move-object v3, p1
    move-object v4, p5
    move-wide v5, p3
    move-object v7, p2
    invoke-virtual/range { v1 .. v8 }, Lcn/manstep/phonemirrorBox/MainActivity;->l1(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)V
  :L0
    return-void
.end method
