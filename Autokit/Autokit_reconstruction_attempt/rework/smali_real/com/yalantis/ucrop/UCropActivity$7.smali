.class Lcom/yalantis/ucrop/UCropActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yalantis/ucrop/UCropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yalantis/ucrop/UCropActivity;


# direct methods
.method constructor <init>(Lcom/yalantis/ucrop/UCropActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/yalantis/ucrop/UCropActivity$7;->this$0:Lcom/yalantis/ucrop/UCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity$7;->this$0:Lcom/yalantis/ucrop/UCropActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    # invokes: Lcom/yalantis/ucrop/UCropActivity;->setWidgetState(I)V
    invoke-static {v0, p1}, Lcom/yalantis/ucrop/UCropActivity;->access$900(Lcom/yalantis/ucrop/UCropActivity;I)V

    :cond_f
    return-void
.end method
