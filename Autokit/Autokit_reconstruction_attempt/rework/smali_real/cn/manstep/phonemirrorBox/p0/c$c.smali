.class Lcn/manstep/phonemirrorBox/p0/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/p0/c;->k(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/manstep/phonemirrorBox/p0/c;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/p0/c;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c$c;->c:Lcn/manstep/phonemirrorBox/p0/c;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/p0/c$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c$c;->c:Lcn/manstep/phonemirrorBox/p0/c;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/p0/c;->d(Lcn/manstep/phonemirrorBox/p0/c;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/p0/c$c;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcn/manstep/phonemirrorBox/util/c0;->o(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
