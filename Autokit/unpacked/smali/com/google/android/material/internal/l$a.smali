.class final Lcom/google/android/material/internal/l$a;
.super Ljava/lang/Object;
.implements Landroidx/core/view/q;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/internal/l;->a(Landroid/view/View;Lcom/google/android/material/internal/l$c;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = null
.end annotation

.field final synthetic a:Lcom/google/android/material/internal/l$c;

.field final synthetic b:Lcom/google/android/material/internal/l$d;

.method constructor <init>(Lcom/google/android/material/internal/l$c;Lcom/google/android/material/internal/l$d;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/l$a;->a:Lcom/google/android/material/internal/l$c;
    iput-object p2, p0, Lcom/google/android/material/internal/l$a;->b:Lcom/google/android/material/internal/l$d;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroid/view/View;Landroidx/core/view/d0;)Landroidx/core/view/d0;
  .registers 6
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/l$a;->a:Lcom/google/android/material/internal/l$c;
    new-instance v1, Lcom/google/android/material/internal/l$d;
    iget-object v2, p0, Lcom/google/android/material/internal/l$a;->b:Lcom/google/android/material/internal/l$d;
    invoke-direct { v1, v2 }, Lcom/google/android/material/internal/l$d;-><init>(Lcom/google/android/material/internal/l$d;)V
    invoke-interface { v0, p1, p2, v1 }, Lcom/google/android/material/internal/l$c;->a(Landroid/view/View;Landroidx/core/view/d0;Lcom/google/android/material/internal/l$d;)Landroidx/core/view/d0;
    return-object p2
.end method
