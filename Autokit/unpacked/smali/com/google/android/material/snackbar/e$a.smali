.class Lcom/google/android/material/snackbar/e$a;
.super Ljava/lang/Object;
.implements Landroid/os/Handler$Callback;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/snackbar/e;-><init>()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcom/google/android/material/snackbar/e;

.method constructor <init>(Lcom/google/android/material/snackbar/e;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/snackbar/e$a;->a:Lcom/google/android/material/snackbar/e;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
  .registers 3
  .line 1
    iget v0, p1, Landroid/os/Message;->what:I
    if-eqz v0, :L0
    const/4 p1, 0
    return p1
  :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/snackbar/e$a;->a:Lcom/google/android/material/snackbar/e;
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    check-cast p1, Lcom/google/android/material/snackbar/e$c;
    invoke-virtual { v0, p1 }, Lcom/google/android/material/snackbar/e;->c(Lcom/google/android/material/snackbar/e$c;)V
    const/4 p1, 1
    return p1
.end method
