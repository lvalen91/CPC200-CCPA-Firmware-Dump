.class public final Lc/g/i/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/g/i/e$f;,
        Lc/g/i/e$a;,
        Lc/g/i/e$b;,
        Lc/g/i/e$c;,
        Lc/g/i/e$e;,
        Lc/g/i/e$d;
    }
.end annotation


# static fields
.field public static final a:Lc/g/i/d;

.field public static final b:Lc/g/i/d;

.field public static final c:Lc/g/i/d;

.field public static final d:Lc/g/i/d;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lc/g/i/e$e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/g/i/e$e;-><init>(Lc/g/i/e$c;Z)V

    sput-object v0, Lc/g/i/e;->a:Lc/g/i/d;

    .line 2
    new-instance v0, Lc/g/i/e$e;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lc/g/i/e$e;-><init>(Lc/g/i/e$c;Z)V

    sput-object v0, Lc/g/i/e;->b:Lc/g/i/d;

    .line 3
    new-instance v0, Lc/g/i/e$e;

    sget-object v1, Lc/g/i/e$b;->a:Lc/g/i/e$b;

    invoke-direct {v0, v1, v2}, Lc/g/i/e$e;-><init>(Lc/g/i/e$c;Z)V

    sput-object v0, Lc/g/i/e;->c:Lc/g/i/d;

    .line 4
    new-instance v0, Lc/g/i/e$e;

    sget-object v1, Lc/g/i/e$b;->a:Lc/g/i/e$b;

    invoke-direct {v0, v1, v3}, Lc/g/i/e$e;-><init>(Lc/g/i/e$c;Z)V

    sput-object v0, Lc/g/i/e;->d:Lc/g/i/d;

    .line 5
    sget-object v0, Lc/g/i/e$a;->b:Lc/g/i/e$a;

    .line 6
    sget-object v0, Lc/g/i/e$f;->b:Lc/g/i/e$f;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I)I
    .registers 2

    const/4 v0, 0x1

    if-eqz p0, :cond_b

    if-eq p0, v0, :cond_9

    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    return v0

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    return v0
.end method

.method static b(I)I
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_e

    if-eq p0, v0, :cond_c

    const/4 v1, 0x2

    if-eq p0, v1, :cond_c

    packed-switch p0, :pswitch_data_10

    return v1

    :cond_c
    :pswitch_c
    const/4 p0, 0x0

    return p0

    :cond_e
    :pswitch_e
    return v0

    nop

    :pswitch_data_10
    .packed-switch 0xe
        :pswitch_e
        :pswitch_e
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method
