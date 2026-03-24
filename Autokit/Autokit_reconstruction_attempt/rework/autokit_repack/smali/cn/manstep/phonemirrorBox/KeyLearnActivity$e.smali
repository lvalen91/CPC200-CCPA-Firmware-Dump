.class Lcn/manstep/phonemirrorBox/KeyLearnActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/KeyLearnActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/KeyLearnActivity;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/KeyLearnActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$e;->b:Lcn/manstep/phonemirrorBox/KeyLearnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$e;->b:Lcn/manstep/phonemirrorBox/KeyLearnActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/c0;->t(Landroid/content/Context;Z)V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$e;->b:Lcn/manstep/phonemirrorBox/KeyLearnActivity;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->L0()V

    return-void
.end method
