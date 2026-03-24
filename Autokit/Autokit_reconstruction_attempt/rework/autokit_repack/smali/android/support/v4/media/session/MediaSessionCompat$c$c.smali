.class Landroid/support/v4/media/session/MediaSessionCompat$c$c;
.super Landroid/support/v4/media/session/MediaSessionCompat$c$b;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/session/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic b:Landroid/support/v4/media/session/MediaSessionCompat$c;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->b:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$c$b;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$c;)V

    return-void
.end method


# virtual methods
.method public t(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->b:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$c;->l(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method
