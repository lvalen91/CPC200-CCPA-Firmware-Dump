.class Lcn/manstep/phonemirrorBox/AutoStartService$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/AutoStartService;->o(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/AutoStartService;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/AutoStartService;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AutoStartService$d;->b:Lcn/manstep/phonemirrorBox/AutoStartService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService$d;->b:Lcn/manstep/phonemirrorBox/AutoStartService;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/AutoStartService;->q(Lcn/manstep/phonemirrorBox/AutoStartService;)V

    :cond_b
    return-void
.end method
