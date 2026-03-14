.class Lc/a/k/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/a/k/a/a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "a"
.end annotation

.field final a:Landroid/content/res/ColorStateList;

.field final b:Landroid/content/res/Configuration;

.method constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/Configuration;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lc/a/k/a/a$a;->a:Landroid/content/res/ColorStateList;
  .line 3
    iput-object p2, p0, Lc/a/k/a/a$a;->b:Landroid/content/res/Configuration;
    return-void
.end method
