.class public final Ld/c/a/a/s/a;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
  .registers 4
    if-eqz p1, :L1
    if-nez p2, :L0
    goto :L1
  :L0
  .line 1
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->getState()[I
    move-result-object p0
    const/4 v0, 0
    invoke-virtual { p1, p0, v0 }, Landroid/content/res/ColorStateList;->getColorForState([II)I
    move-result p0
  .line 2
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;
    invoke-direct { p1, p0, p2 }, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V
    return-object p1
  :L1
    const/4 p0, 0
    return-object p0
.end method
