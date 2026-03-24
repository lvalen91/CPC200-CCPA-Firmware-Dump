.class public final Lc/g/i/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/g/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Lc/g/i/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lc/g/i/a;->e(Ljava/util/Locale;)Z

    move-result v0

    invoke-direct {p0, v0}, Lc/g/i/a$a;->c(Z)V

    return-void
.end method

.method private static b(Z)Lc/g/i/a;
    .registers 1

    if-eqz p0, :cond_5

    .line 1
    sget-object p0, Lc/g/i/a;->h:Lc/g/i/a;

    goto :goto_7

    :cond_5
    sget-object p0, Lc/g/i/a;->g:Lc/g/i/a;

    :goto_7
    return-object p0
.end method

.method private c(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lc/g/i/a$a;->a:Z

    .line 2
    sget-object p1, Lc/g/i/a;->d:Lc/g/i/d;

    iput-object p1, p0, Lc/g/i/a$a;->c:Lc/g/i/d;

    const/4 p1, 0x2

    .line 3
    iput p1, p0, Lc/g/i/a$a;->b:I

    return-void
.end method


# virtual methods
.method public a()Lc/g/i/a;
    .registers 5

    .line 1
    iget v0, p0, Lc/g/i/a$a;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lc/g/i/a$a;->c:Lc/g/i/d;

    sget-object v1, Lc/g/i/a;->d:Lc/g/i/d;

    if-ne v0, v1, :cond_12

    .line 2
    iget-boolean v0, p0, Lc/g/i/a$a;->a:Z

    invoke-static {v0}, Lc/g/i/a$a;->b(Z)Lc/g/i/a;

    move-result-object v0

    return-object v0

    .line 3
    :cond_12
    new-instance v0, Lc/g/i/a;

    iget-boolean v1, p0, Lc/g/i/a$a;->a:Z

    iget v2, p0, Lc/g/i/a$a;->b:I

    iget-object v3, p0, Lc/g/i/a$a;->c:Lc/g/i/d;

    invoke-direct {v0, v1, v2, v3}, Lc/g/i/a;-><init>(ZILc/g/i/d;)V

    return-object v0
.end method
