.class public Lcn/manstep/phonemirrorBox/g0/a;
.super Ljava/lang/Object;
.source "SourceFile"

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/graphics/drawable/Drawable;

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/g0/a;->a:Ljava/lang/String;
  .line 3
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/g0/a;->b:Ljava/lang/String;
  .line 4
    iput-object p3, p0, Lcn/manstep/phonemirrorBox/g0/a;->c:Landroid/graphics/drawable/Drawable;
    return-void
.end method

.method public a()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/g0/a;->c:Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method public b()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/g0/a;->a:Ljava/lang/String;
    return-object v0
.end method

.method public c()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/g0/a;->b:Ljava/lang/String;
    return-object v0
.end method
