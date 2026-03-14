.class Lcom/google/android/material/timepicker/a$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/timepicker/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcom/google/android/material/timepicker/a;

.method constructor <init>(Lcom/google/android/material/timepicker/a;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/timepicker/a$a;->b:Lcom/google/android/material/timepicker/a;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/a$a;->b:Lcom/google/android/material/timepicker/a;
    invoke-virtual { v0 }, Lcom/google/android/material/timepicker/a;->y()V
    return-void
.end method
