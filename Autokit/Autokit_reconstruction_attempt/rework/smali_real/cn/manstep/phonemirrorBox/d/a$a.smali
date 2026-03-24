.class Lcn/manstep/phonemirrorBox/d/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/d/a;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/d/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/d/a$a;->b:Lcn/manstep/phonemirrorBox/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d/a$a;->b:Lcn/manstep/phonemirrorBox/d/a;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/d/a;->h()V

    return-void
.end method
