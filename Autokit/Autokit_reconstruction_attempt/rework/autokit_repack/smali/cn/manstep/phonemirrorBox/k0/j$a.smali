.class Lcn/manstep/phonemirrorBox/k0/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/k0/j;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/k0/j;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/k0/j;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/j$a;->b:Lcn/manstep/phonemirrorBox/k0/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/j$a;->b:Lcn/manstep/phonemirrorBox/k0/j;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/k0/j;->a(Lcn/manstep/phonemirrorBox/k0/j;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const v0, 0x7f0f0066

    invoke-static {p1, v0}, Lcn/manstep/phonemirrorBox/util/g;->d(Landroid/content/Context;I)V

    return-void
.end method
