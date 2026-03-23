.class public Lcn/manstep/phonemirrorBox/ModeChangeService$c;
.super Landroid/os/Binder;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/ModeChangeService;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "c"
.end annotation

.field private final a:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Lcn/manstep/phonemirrorBox/ModeChangeService;",
      ">;"
    }
  .end annotation
.end field

.method public constructor <init>(Lcn/manstep/phonemirrorBox/ModeChangeService;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroid/os/Binder;-><init>()V
  .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ModeChangeService$c;->a:Ljava/lang/ref/WeakReference;
    return-void
.end method

.method public a()Lcn/manstep/phonemirrorBox/ModeChangeService;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ModeChangeService$c;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/ModeChangeService;
    return-object v0
.end method
