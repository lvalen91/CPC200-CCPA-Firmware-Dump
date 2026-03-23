.class public Landroidx/databinding/j/b;
.super Ljava/lang/Object;
.source "SourceFile"

.method private static a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
  .registers 8
    const/4 v0, 0
    const/4 v1, 1
    if-nez p0, :L0
    const/4 v2, 1
    goto :L1
  :L0
    const/4 v2, 0
  :L1
    if-nez p1, :L2
    const/4 v3, 1
    goto :L3
  :L2
    const/4 v3, 0
  :L3
    if-eq v2, v3, :L4
    return v1
  :L4
    if-nez p0, :L5
    return v0
  :L5
  .line 1
    invoke-interface { p0 }, Ljava/lang/CharSequence;->length()I
    move-result v2
  .line 2
    invoke-interface { p1 }, Ljava/lang/CharSequence;->length()I
    move-result v3
    if-eq v2, v3, :L6
    return v1
  :L6
    const/4 v3, 0
  :L7
    if-ge v3, v2, :L9
  .line 3
    invoke-interface { p0, v3 }, Ljava/lang/CharSequence;->charAt(I)C
    move-result v4
    invoke-interface { p1, v3 }, Ljava/lang/CharSequence;->charAt(I)C
    move-result v5
    if-eq v4, v5, :L8
    return v1
  :L8
    add-int/lit8 v3, v3, 1
    goto :L7
  :L9
    return v0
.end method

.method public static b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
    move-result-object v0
    if-eq p1, v0, :L3
    if-nez p1, :L0
  .line 2
    invoke-interface { v0 }, Ljava/lang/CharSequence;->length()I
    move-result v1
    if-nez v1, :L0
    goto :L3
  :L0
  .line 3
    instance-of v1, p1, Landroid/text/Spanned;
    if-eqz v1, :L1
  .line 4
    invoke-virtual { p1, v0 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L2
    return-void
  :L1
  .line 5
    invoke-static { p1, v0 }, Landroidx/databinding/j/b;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L2
    return-void
  :L2
  .line 6
    invoke-virtual { p0, p1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  :L3
    return-void
.end method
