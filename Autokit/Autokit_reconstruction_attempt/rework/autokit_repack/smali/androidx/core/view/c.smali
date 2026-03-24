.class public final Landroidx/core/view/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/c$a;
    }
.end annotation


# instance fields
.field final a:Landroid/content/ClipData;

.field final b:I

.field final c:I

.field final d:Landroid/net/Uri;

.field final e:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroidx/core/view/c$a;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Landroidx/core/view/c$a;->a:Landroid/content/ClipData;

    invoke-static {v0}, Lc/g/j/h;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/content/ClipData;

    iput-object v0, p0, Landroidx/core/view/c;->a:Landroid/content/ClipData;

    .line 3
    iget v0, p1, Landroidx/core/view/c$a;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const-string v3, "source"

    invoke-static {v0, v1, v2, v3}, Lc/g/j/h;->b(IIILjava/lang/String;)I

    iput v0, p0, Landroidx/core/view/c;->b:I

    .line 4
    iget v0, p1, Landroidx/core/view/c$a;->c:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc/g/j/h;->d(II)I

    iput v0, p0, Landroidx/core/view/c;->c:I

    .line 5
    iget-object v0, p1, Landroidx/core/view/c$a;->d:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/core/view/c;->d:Landroid/net/Uri;

    .line 6
    iget-object p1, p1, Landroidx/core/view/c$a;->e:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/core/view/c;->e:Landroid/os/Bundle;

    return-void
.end method

.method static a(I)Ljava/lang/String;
    .registers 2

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_7

    const-string p0, "FLAG_CONVERT_TO_PLAIN_TEXT"

    return-object p0

    .line 1
    :cond_7
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static e(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_19

    const/4 v0, 0x1

    if-eq p0, v0, :cond_16

    const/4 v0, 0x2

    if-eq p0, v0, :cond_13

    const/4 v0, 0x3

    if-eq p0, v0, :cond_10

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    const-string p0, "SOURCE_DRAG_AND_DROP"

    return-object p0

    :cond_13
    const-string p0, "SOURCE_INPUT_METHOD"

    return-object p0

    :cond_16
    const-string p0, "SOURCE_CLIPBOARD"

    return-object p0

    :cond_19
    const-string p0, "SOURCE_APP"

    return-object p0
.end method


# virtual methods
.method public b()Landroid/content/ClipData;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/c;->a:Landroid/content/ClipData;

    return-object v0
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/view/c;->c:I

    return v0
.end method

.method public d()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/view/c;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentInfoCompat{clip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/core/view/c;->a:Landroid/content/ClipData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/core/view/c;->b:I

    .line 2
    invoke-static {v1}, Landroidx/core/view/c;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/core/view/c;->c:I

    .line 3
    invoke-static {v1}, Landroidx/core/view/c;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", linkUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/core/view/c;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/core/view/c;->e:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
