.class public Ld/c/a/a/l/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/animation/TimeInterpolator;

.field public static final b:Landroid/animation/TimeInterpolator;

.field public static final c:Landroid/animation/TimeInterpolator;

.field public static final d:Landroid/animation/TimeInterpolator;

.field public static final e:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Ld/c/a/a/l/a;->a:Landroid/animation/TimeInterpolator;

    .line 2
    new-instance v0, Lc/k/a/a/b;

    invoke-direct {v0}, Lc/k/a/a/b;-><init>()V

    sput-object v0, Ld/c/a/a/l/a;->b:Landroid/animation/TimeInterpolator;

    .line 3
    new-instance v0, Lc/k/a/a/a;

    invoke-direct {v0}, Lc/k/a/a/a;-><init>()V

    sput-object v0, Ld/c/a/a/l/a;->c:Landroid/animation/TimeInterpolator;

    .line 4
    new-instance v0, Lc/k/a/a/c;

    invoke-direct {v0}, Lc/k/a/a/c;-><init>()V

    sput-object v0, Ld/c/a/a/l/a;->d:Landroid/animation/TimeInterpolator;

    .line 5
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Ld/c/a/a/l/a;->e:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(FFF)F
    .registers 3

    sub-float/2addr p1, p0

    mul-float p2, p2, p1

    add-float/2addr p0, p2

    return p0
.end method

.method public static b(FFFFF)F
    .registers 6

    cmpg-float v0, p4, p2

    if-gez v0, :cond_5

    return p0

    :cond_5
    cmpl-float v0, p4, p3

    if-lez v0, :cond_a

    return p1

    :cond_a
    sub-float/2addr p4, p2

    sub-float/2addr p3, p2

    div-float/2addr p4, p3

    .line 1
    invoke-static {p0, p1, p4}, Ld/c/a/a/l/a;->a(FFF)F

    move-result p0

    return p0
.end method
