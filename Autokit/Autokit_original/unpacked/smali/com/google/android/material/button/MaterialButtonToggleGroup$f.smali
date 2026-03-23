.class Lcom/google/android/material/button/MaterialButtonToggleGroup$f;
.super Ljava/lang/Object;
.implements Lcom/google/android/material/button/MaterialButton$b;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/google/android/material/button/MaterialButtonToggleGroup;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "f"
.end annotation

.field final synthetic a:Lcom/google/android/material/button/MaterialButtonToggleGroup;

.method private constructor <init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$f;->a:Lcom/google/android/material/button/MaterialButtonToggleGroup;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/google/android/material/button/MaterialButtonToggleGroup$a;)V
  .registers 3
  .line 2
    invoke-direct { p0, p1 }, Lcom/google/android/material/button/MaterialButtonToggleGroup$f;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V
    return-void
.end method

.method public a(Lcom/google/android/material/button/MaterialButton;Z)V
  .registers 3
  .line 1
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$f;->a:Lcom/google/android/material/button/MaterialButtonToggleGroup;
    invoke-virtual { p1 }, Landroid/widget/LinearLayout;->invalidate()V
    return-void
.end method
