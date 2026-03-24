.class Lcom/yalantis/ucrop/view/UCropView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yalantis/ucrop/callback/OverlayViewChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yalantis/ucrop/view/UCropView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yalantis/ucrop/view/UCropView;


# direct methods
.method constructor <init>(Lcom/yalantis/ucrop/view/UCropView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/yalantis/ucrop/view/UCropView$2;->this$0:Lcom/yalantis/ucrop/view/UCropView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCropRectUpdated(Landroid/graphics/RectF;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/UCropView$2;->this$0:Lcom/yalantis/ucrop/view/UCropView;

    # getter for: Lcom/yalantis/ucrop/view/UCropView;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;
    invoke-static {v0}, Lcom/yalantis/ucrop/view/UCropView;->access$100(Lcom/yalantis/ucrop/view/UCropView;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/view/CropImageView;->setCropRect(Landroid/graphics/RectF;)V

    return-void
.end method
