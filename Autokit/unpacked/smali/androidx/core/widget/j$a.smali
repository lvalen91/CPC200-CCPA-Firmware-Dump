.class final Landroidx/core/widget/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/core/widget/j;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 26
  name = "a"
.end annotation

.method static a(Landroid/content/Context;Landroid/content/ClipData$Item;I)Ljava/lang/CharSequence;
  .registers 3
    and-int/lit8 p2, p2, 1
    if-eqz p2, :L1
  .line 1
    invoke-virtual { p1, p0 }, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;
    move-result-object p0
  .line 2
    instance-of p1, p0, Landroid/text/Spanned;
    if-eqz p1, :L0
    invoke-interface { p0 }, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object p0
  :L0
    return-object p0
  :L1
  .line 3
    invoke-virtual { p1, p0 }, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;
    move-result-object p0
    return-object p0
.end method
