.class Lcn/manstep/phonemirrorBox/util/b0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/util/b0;->h(Lcn/manstep/phonemirrorBox/util/b0$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/util/b0$d;

.field final synthetic c:Lcn/manstep/phonemirrorBox/util/b0;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/util/b0;Lcn/manstep/phonemirrorBox/util/b0$d;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/b0$c;->c:Lcn/manstep/phonemirrorBox/util/b0;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/util/b0$c;->b:Lcn/manstep/phonemirrorBox/util/b0$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/b0$c;->c:Lcn/manstep/phonemirrorBox/util/b0;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/b0$c;->b:Lcn/manstep/phonemirrorBox/util/b0$d;

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/b0;->f(Lcn/manstep/phonemirrorBox/util/b0;Lcn/manstep/phonemirrorBox/util/b0$d;)V

    return-void
.end method
