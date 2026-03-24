.class Lcom/yalantis/ucrop/UCropActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yalantis/ucrop/UCropActivity;->setupRotateWidget()V
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
    iput-object p1, p0, Lcom/yalantis/ucrop/UCropActivity$4;->this$0:Lcom/yalantis/ucrop/UCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/yalantis/ucrop/UCropActivity$4;->this$0:Lcom/yalantis/ucrop/UCropActivity;

    # invokes: Lcom/yalantis/ucrop/UCropActivity;->resetRotation()V
    invoke-static {p1}, Lcom/yalantis/ucrop/UCropActivity;->access$700(Lcom/yalantis/ucrop/UCropActivity;)V

    return-void
.end method
