.class Landroidx/appcompat/widget/k0$b;
.super Ljava/lang/Object;
.implements Landroidx/appcompat/widget/k0$e;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/k0;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "b"
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 6
  :L0
  .line 1
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-static { p1, v0, p2, p3, p4 }, Lc/q/a/a/b;->a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lc/q/a/a/b;
    move-result-object p1
  :L1
    return-object p1
  :L2
    const/4 p1, 0
    return-object p1
.end method
