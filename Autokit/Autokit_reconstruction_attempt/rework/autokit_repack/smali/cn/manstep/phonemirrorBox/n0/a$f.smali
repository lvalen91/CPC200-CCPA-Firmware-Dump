.class Lcn/manstep/phonemirrorBox/n0/a$f;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/n0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/manstep/phonemirrorBox/n0/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$f;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcn/manstep/phonemirrorBox/n0/a$a;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/n0/a$f;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/n0/a$f;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/n0/a$f;->a:Ljava/lang/ref/WeakReference;

    return-object p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/n0/a;

    if-nez v1, :cond_12

    const-string p1, "RenderHandler.handleMessage: weak ref is null"

    .line 3
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_12
    iget-object v2, v1, Lcn/manstep/phonemirrorBox/n0/a;->j:Lcn/manstep/phonemirrorBox/n0/a$d;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_72

    const/4 v5, 0x3

    if-eq v0, v4, :cond_38

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2e

    if-eq v0, v5, :cond_22

    goto/16 :goto_98

    :cond_22
    if-eqz v2, :cond_98

    .line 5
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_29

    const/4 v3, 0x1

    :cond_29
    invoke-virtual {v2, v3}, Lcn/manstep/phonemirrorBox/n0/a$d;->e(Z)V

    goto/16 :goto_98

    :cond_2e
    if-eqz v2, :cond_98

    .line 6
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v0, p1}, Lcn/manstep/phonemirrorBox/n0/a$d;->f(II)V

    goto :goto_98

    .line 7
    :cond_38
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/n0/a;->e(Lcn/manstep/phonemirrorBox/n0/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/n0/a$e;

    .line 8
    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v6}, Lcn/manstep/phonemirrorBox/n0/a$e;->d(I)V

    goto :goto_40

    :cond_52
    if-eqz v2, :cond_98

    .line 9
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eq p1, v5, :cond_6e

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6a

    const/4 v0, 0x5

    if-eq p1, v0, :cond_66

    const/4 v0, 0x6

    if-eq p1, v0, :cond_62

    goto :goto_98

    .line 10
    :cond_62
    invoke-virtual {v2, v4}, Lcn/manstep/phonemirrorBox/n0/a$d;->c(Z)V

    goto :goto_98

    .line 11
    :cond_66
    invoke-virtual {v2, v3}, Lcn/manstep/phonemirrorBox/n0/a$d;->c(Z)V

    goto :goto_98

    .line 12
    :cond_6a
    invoke-virtual {v2, v4}, Lcn/manstep/phonemirrorBox/n0/a$d;->d(Z)V

    goto :goto_98

    .line 13
    :cond_6e
    invoke-virtual {v2, v3}, Lcn/manstep/phonemirrorBox/n0/a$d;->d(Z)V

    goto :goto_98

    .line 14
    :cond_72
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_77

    const/4 v3, 0x1

    .line 15
    :cond_77
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/n0/a;->e(Lcn/manstep/phonemirrorBox/n0/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/manstep/phonemirrorBox/n0/a$e;

    .line 16
    invoke-interface {v0, v3}, Lcn/manstep/phonemirrorBox/n0/a$e;->f(Z)V

    goto :goto_7f

    :cond_8f
    if-eqz v3, :cond_95

    .line 17
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/n0/a;->b(Lcn/manstep/phonemirrorBox/n0/a;)V

    goto :goto_98

    .line 18
    :cond_95
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/n0/a;->d(Lcn/manstep/phonemirrorBox/n0/a;)V

    :cond_98
    :goto_98
    return-void
.end method
