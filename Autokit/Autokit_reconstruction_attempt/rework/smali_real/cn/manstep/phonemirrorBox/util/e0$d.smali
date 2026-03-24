.class Lcn/manstep/phonemirrorBox/util/e0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/util/p$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/util/e0;->s(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:J

.field final synthetic c:Lcn/manstep/phonemirrorBox/util/e0;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/util/e0;Ljava/io/File;J)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/e0$d;->c:Lcn/manstep/phonemirrorBox/util/e0;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/util/e0$d;->a:Ljava/io/File;

    iput-wide p3, p0, Lcn/manstep/phonemirrorBox/util/e0$d;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "utilUploadLog,uploadDataFile:failure!!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/manstep/phonemirrorBox/util/e0$d;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/e0$d;->c:Lcn/manstep/phonemirrorBox/util/e0;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/e0;->d(Lcn/manstep/phonemirrorBox/util/e0;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "utilUploadLog,uploadDataFile:success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/e0$d;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/n;->f(Ljava/lang/String;)Z

    .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/e0$d;->c:Lcn/manstep/phonemirrorBox/util/e0;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/e0;->a(Lcn/manstep/phonemirrorBox/util/e0;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "file upload success!"

    invoke-static {p1, v0}, Lcn/manstep/phonemirrorBox/widget/a;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method
