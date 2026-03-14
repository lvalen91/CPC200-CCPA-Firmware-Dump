.class final Landroidx/core/widget/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/core/widget/j;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 26
  name = "b"
.end annotation

.method static a(Landroid/content/Context;Landroid/content/ClipData$Item;I)Ljava/lang/CharSequence;
  .registers 3
  .line 1
    invoke-virtual { p1, p0 }, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;
    move-result-object p0
    and-int/lit8 p1, p2, 1
    if-eqz p1, :L0
  .line 2
    instance-of p1, p0, Landroid/text/Spanned;
    if-eqz p1, :L0
  .line 3
    invoke-interface { p0 }, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object p0
  :L0
    return-object p0
.end method
