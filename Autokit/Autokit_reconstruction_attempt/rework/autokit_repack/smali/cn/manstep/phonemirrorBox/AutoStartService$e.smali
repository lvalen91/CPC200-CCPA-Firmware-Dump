.class Lcn/manstep/phonemirrorBox/AutoStartService$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/AutoStartService;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcn/manstep/phonemirrorBox/AutoStartService;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/AutoStartService;Landroid/content/Intent;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AutoStartService$e;->c:Lcn/manstep/phonemirrorBox/AutoStartService;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/AutoStartService$e;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService$e;->c:Lcn/manstep/phonemirrorBox/AutoStartService;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService$e;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
