.class Lcn/manstep/phonemirrorBox/util/d0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/util/p$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/util/d0;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/manstep/phonemirrorBox/util/d0;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/util/d0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/d0$a;->a:Lcn/manstep/phonemirrorBox/util/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/d0$a;->a:Lcn/manstep/phonemirrorBox/util/d0;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/d0;->b(Lcn/manstep/phonemirrorBox/util/d0;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "utilUpdateVersion,success,checkAppUpdate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->z:Z

    if-nez v0, :cond_1d

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/d0$a;->a:Lcn/manstep/phonemirrorBox/util/d0;

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/util/d0;->a(Lcn/manstep/phonemirrorBox/util/d0;Ljava/lang/String;)V

    :cond_1d
    return-void
.end method
