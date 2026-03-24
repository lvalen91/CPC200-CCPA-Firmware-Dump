.class Lcn/manstep/phonemirrorBox/BoxInterface/a$b$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/BoxInterface/a$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/manstep/phonemirrorBox/BoxInterface/a$b;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/a$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a$b$a;->a:Lcn/manstep/phonemirrorBox/BoxInterface/a$b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_b

    .line 2
    :cond_6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a$b$a;->a:Lcn/manstep/phonemirrorBox/BoxInterface/a$b;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/a$b;->a(Lcn/manstep/phonemirrorBox/BoxInterface/a$b;)V

    :goto_b
    return-void
.end method
