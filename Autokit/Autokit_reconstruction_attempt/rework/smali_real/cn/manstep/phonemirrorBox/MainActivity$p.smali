.class Lcn/manstep/phonemirrorBox/MainActivity$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/MainActivity;->P0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/MainActivity;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$p;->b:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity$p;->b:Lcn/manstep/phonemirrorBox/MainActivity;

    const-string v1, "mute.wav"

    invoke-static {v0, v1, v1}, Lcn/manstep/phonemirrorBox/util/c0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity$p;->b:Lcn/manstep/phonemirrorBox/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/b0;->D(Landroid/content/Context;Z)V

    :cond_10
    return-void
.end method
