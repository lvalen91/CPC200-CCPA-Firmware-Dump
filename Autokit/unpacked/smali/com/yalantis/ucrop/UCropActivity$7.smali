.class Lcom/yalantis/ucrop/UCropActivity$7;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/yalantis/ucrop/UCropActivity;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/yalantis/ucrop/UCropActivity;

.method constructor <init>(Lcom/yalantis/ucrop/UCropActivity;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/yalantis/ucrop/UCropActivity$7;->this$0:Lcom/yalantis/ucrop/UCropActivity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 3
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->isSelected()Z
    move-result v0
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity$7;->this$0:Lcom/yalantis/ucrop/UCropActivity;
    invoke-virtual { p1 }, Landroid/view/View;->getId()I
    move-result p1
    invoke-static { v0, p1 }, Lcom/yalantis/ucrop/UCropActivity;->access$900(Lcom/yalantis/ucrop/UCropActivity;I)V
  :L0
    return-void
.end method
