.class Lcn/manstep/phonemirrorBox/floatwindow/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/floatwindow/f;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/floatwindow/f;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/floatwindow/f;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f$d;->b:Lcn/manstep/phonemirrorBox/floatwindow/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f$d;->b:Lcn/manstep/phonemirrorBox/floatwindow/f;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/floatwindow/f;->b(Lcn/manstep/phonemirrorBox/floatwindow/f;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f$d;->b:Lcn/manstep/phonemirrorBox/floatwindow/f;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/floatwindow/f;->b(Lcn/manstep/phonemirrorBox/floatwindow/f;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getX()F

    move-result v1

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/floatwindow/f$d;->b:Lcn/manstep/phonemirrorBox/floatwindow/f;

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/floatwindow/f;->b(Lcn/manstep/phonemirrorBox/floatwindow/f;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    return-void
.end method
