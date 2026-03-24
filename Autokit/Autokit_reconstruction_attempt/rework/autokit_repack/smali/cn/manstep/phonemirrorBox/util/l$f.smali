.class Lcn/manstep/phonemirrorBox/util/l$f;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/util/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/util/l;


# direct methods
.method private constructor <init>(Lcn/manstep/phonemirrorBox/util/l;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/l$f;->b:Lcn/manstep/phonemirrorBox/util/l;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/manstep/phonemirrorBox/util/l;Lcn/manstep/phonemirrorBox/util/l$a;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/util/l$f;-><init>(Lcn/manstep/phonemirrorBox/util/l;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/l$f;->b:Lcn/manstep/phonemirrorBox/util/l;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/l;->h(Lcn/manstep/phonemirrorBox/util/l;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/l;->i(Lcn/manstep/phonemirrorBox/util/l;Landroid/content/Context;)V

    return-void
.end method
