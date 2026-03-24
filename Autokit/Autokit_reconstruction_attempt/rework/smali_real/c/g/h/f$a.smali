.class public Lc/g/h/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/g/h/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:[Lc/g/h/f$b;


# direct methods
.method public constructor <init>(I[Lc/g/h/f$b;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lc/g/h/f$a;->a:I

    .line 3
    iput-object p2, p0, Lc/g/h/f$a;->b:[Lc/g/h/f$b;

    return-void
.end method

.method static a(I[Lc/g/h/f$b;)Lc/g/h/f$a;
    .registers 3

    .line 1
    new-instance v0, Lc/g/h/f$a;

    invoke-direct {v0, p0, p1}, Lc/g/h/f$a;-><init>(I[Lc/g/h/f$b;)V

    return-object v0
.end method


# virtual methods
.method public b()[Lc/g/h/f$b;
    .registers 2

    .line 1
    iget-object v0, p0, Lc/g/h/f$a;->b:[Lc/g/h/f$b;

    return-object v0
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Lc/g/h/f$a;->a:I

    return v0
.end method
