.class Landroidx/lifecycle/FullLifecycleObserverAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/h;


# instance fields
.field private final a:Landroidx/lifecycle/d;

.field private final b:Landroidx/lifecycle/h;


# direct methods
.method constructor <init>(Landroidx/lifecycle/d;Landroidx/lifecycle/h;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/d;

    .line 3
    iput-object p2, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->b:Landroidx/lifecycle/h;

    return-void
.end method


# virtual methods
.method public d(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;)V
    .registers 5

    .line 1
    sget-object v0, Landroidx/lifecycle/FullLifecycleObserverAdapter$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_40

    goto :goto_37

    .line 2
    :pswitch_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ON_ANY must not been send by anybody"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_14
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/d;

    invoke-interface {v0, p1}, Landroidx/lifecycle/d;->b(Landroidx/lifecycle/j;)V

    goto :goto_37

    .line 4
    :pswitch_1a
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/d;

    invoke-interface {v0, p1}, Landroidx/lifecycle/d;->f(Landroidx/lifecycle/j;)V

    goto :goto_37

    .line 5
    :pswitch_20
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/d;

    invoke-interface {v0, p1}, Landroidx/lifecycle/d;->e(Landroidx/lifecycle/j;)V

    goto :goto_37

    .line 6
    :pswitch_26
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/d;

    invoke-interface {v0, p1}, Landroidx/lifecycle/d;->a(Landroidx/lifecycle/j;)V

    goto :goto_37

    .line 7
    :pswitch_2c
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/d;

    invoke-interface {v0, p1}, Landroidx/lifecycle/d;->g(Landroidx/lifecycle/j;)V

    goto :goto_37

    .line 8
    :pswitch_32
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/d;

    invoke-interface {v0, p1}, Landroidx/lifecycle/d;->c(Landroidx/lifecycle/j;)V

    .line 9
    :goto_37
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->b:Landroidx/lifecycle/h;

    if-eqz v0, :cond_3e

    .line 10
    invoke-interface {v0, p1, p2}, Landroidx/lifecycle/h;->d(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;)V

    :cond_3e
    return-void

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_32
        :pswitch_2c
        :pswitch_26
        :pswitch_20
        :pswitch_1a
        :pswitch_14
        :pswitch_c
    .end packed-switch
.end method
