.class Lcn/manstep/phonemirrorBox/AdjustSizeActivity$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/AdjustSizeActivity$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/AdjustSizeActivity$a;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/AdjustSizeActivity$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AdjustSizeActivity$a$a;->b:Lcn/manstep/phonemirrorBox/AdjustSizeActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AdjustSizeActivity$a$a;->b:Lcn/manstep/phonemirrorBox/AdjustSizeActivity$a;

    iget-object p1, p1, Lcn/manstep/phonemirrorBox/AdjustSizeActivity$a;->b:Lcn/manstep/phonemirrorBox/AdjustSizeActivity;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/AdjustSizeActivity;->L(Lcn/manstep/phonemirrorBox/AdjustSizeActivity;)Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->getSize()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdjustSizeActivity"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v1, "AREA_RECT"

    invoke-virtual {v0, v1, p1}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AdjustSizeActivity$a$a;->b:Lcn/manstep/phonemirrorBox/AdjustSizeActivity$a;

    iget-object p1, p1, Lcn/manstep/phonemirrorBox/AdjustSizeActivity$a;->b:Lcn/manstep/phonemirrorBox/AdjustSizeActivity;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/AdjustSizeActivity;->N()V

    return-void
.end method
