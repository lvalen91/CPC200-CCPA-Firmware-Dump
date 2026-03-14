.class Lcom/google/android/material/floatingactionbutton/b$h;
.super Lcom/google/android/material/floatingactionbutton/b$l;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/google/android/material/floatingactionbutton/b;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "h"
.end annotation

.field final synthetic e:Lcom/google/android/material/floatingactionbutton/b;

.method constructor <init>(Lcom/google/android/material/floatingactionbutton/b;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/b$h;->e:Lcom/google/android/material/floatingactionbutton/b;
    const/4 v0, 0
    invoke-direct { p0, p1, v0 }, Lcom/google/android/material/floatingactionbutton/b$l;-><init>(Lcom/google/android/material/floatingactionbutton/b;Lcom/google/android/material/floatingactionbutton/b$a;)V
    return-void
.end method

.method protected a()F
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b$h;->e:Lcom/google/android/material/floatingactionbutton/b;
    iget v1, v0, Lcom/google/android/material/floatingactionbutton/b;->h:F
    iget v0, v0, Lcom/google/android/material/floatingactionbutton/b;->j:F
    add-float/2addr v1, v0
    return v1
.end method
