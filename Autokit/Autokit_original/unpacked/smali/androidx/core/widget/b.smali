.class public interface abstract Landroidx/core/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"

.field public final static a:Z

.method static constructor <clinit>()V
  .registers 2
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 27
    if-lt v0, v1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    sput-boolean v0, Landroidx/core/widget/b;->a:Z
    return-void
.end method
