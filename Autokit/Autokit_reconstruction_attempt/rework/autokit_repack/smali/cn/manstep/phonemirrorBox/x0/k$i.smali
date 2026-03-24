.class final Lcn/manstep/phonemirrorBox/x0/k$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/x0/k;->D0(Landroid/view/View;Lcn/manstep/phonemirrorBox/x0/k$k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/x0/k$k;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/x0/k$k;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/k$i;->b:Lcn/manstep/phonemirrorBox/x0/k$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/k$i;->b:Lcn/manstep/phonemirrorBox/x0/k$k;

    invoke-interface {v0, p1}, Lcn/manstep/phonemirrorBox/x0/k$k;->a(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method
