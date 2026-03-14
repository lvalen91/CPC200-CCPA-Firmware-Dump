.class abstract Lcom/google/android/material/datepicker/p;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "<S:",
    "Ljava/lang/Object;",
    ">",
    "Landroidx/fragment/app/Fragment;"
  }
.end annotation

.field protected final a0:Ljava/util/LinkedHashSet;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/LinkedHashSet<",
      "Lcom/google/android/material/datepicker/o<",
      "TS;>;>;"
    }
  .end annotation
.end field

.method constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Landroidx/fragment/app/Fragment;-><init>()V
  .line 2
    new-instance v0, Ljava/util/LinkedHashSet;
    invoke-direct { v0 }, Ljava/util/LinkedHashSet;-><init>()V
    iput-object v0, p0, Lcom/google/android/material/datepicker/p;->a0:Ljava/util/LinkedHashSet;
    return-void
.end method

.method g2(Lcom/google/android/material/datepicker/o;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lcom/google/android/material/datepicker/o<",
      "TS;>;)Z"
    }
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/p;->a0:Ljava/util/LinkedHashSet;
    invoke-virtual { v0, p1 }, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    move-result p1
    return p1
.end method

.method h2()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/p;->a0:Ljava/util/LinkedHashSet;
    invoke-virtual { v0 }, Ljava/util/LinkedHashSet;->clear()V
    return-void
.end method
