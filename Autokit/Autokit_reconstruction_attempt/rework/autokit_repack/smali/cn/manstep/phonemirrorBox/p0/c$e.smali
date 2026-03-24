.class Lcn/manstep/phonemirrorBox/p0/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/p0/c;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/p0/c;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/p0/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c$e;->b:Lcn/manstep/phonemirrorBox/p0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/p0/c$e;->b:Lcn/manstep/phonemirrorBox/p0/c;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/p0/c;->e(Lcn/manstep/phonemirrorBox/p0/c;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/p0/c$e;->b:Lcn/manstep/phonemirrorBox/p0/c;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/p0/c;->d(Lcn/manstep/phonemirrorBox/p0/c;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f0f0168

    const/16 v2, 0x1770

    invoke-static {v0, v1, v2}, Lcn/manstep/phonemirrorBox/util/g;->a(Landroid/content/Context;II)V

    :cond_1c
    return-void
.end method
