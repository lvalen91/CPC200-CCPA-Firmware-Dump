.class Lcn/manstep/phonemirrorBox/BoxInterface/b$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->g:Z

    if-nez v0, :cond_c

    const/16 v0, 0xc

    .line 2
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->n:Z

    :cond_c
    return-void
.end method
