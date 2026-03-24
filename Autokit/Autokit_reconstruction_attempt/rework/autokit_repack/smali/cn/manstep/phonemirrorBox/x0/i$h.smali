.class Lcn/manstep/phonemirrorBox/x0/i$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/x0/i;->R(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/x0/i;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/x0/i;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/i$h;->b:Lcn/manstep/phonemirrorBox/x0/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/i$h;->b:Lcn/manstep/phonemirrorBox/x0/i;

    iget-object p1, p1, Lcn/manstep/phonemirrorBox/x0/c;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/manstep/phonemirrorBox/util/w;->a(Landroid/content/Context;Z)V

    return-void
.end method
