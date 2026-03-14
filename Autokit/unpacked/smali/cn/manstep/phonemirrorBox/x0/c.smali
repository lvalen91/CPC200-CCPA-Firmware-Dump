.class public Lcn/manstep/phonemirrorBox/x0/c;
.super Landroidx/lifecycle/a;
.source "SourceFile"

.field protected final d:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Landroid/content/Context;",
      ">;"
    }
  .end annotation
.end field

.method public constructor <init>(Landroid/app/Application;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1 }, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V
  .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-virtual { p1 }, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;
    move-result-object p1
    invoke-static/range { p1 .. p1 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/x0/c;->d:Ljava/lang/ref/WeakReference;
    return-void
.end method
