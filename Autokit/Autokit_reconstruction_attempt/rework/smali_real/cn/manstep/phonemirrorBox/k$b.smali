.class Lcn/manstep/phonemirrorBox/k$b;
.super Lc/a/o/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/k;->attachBaseContext(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Landroid/content/res/Configuration;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/k;Landroid/content/Context;Landroid/content/res/Resources$Theme;Landroid/content/res/Configuration;)V
    .registers 5

    .line 1
    iput-object p4, p0, Lcn/manstep/phonemirrorBox/k$b;->f:Landroid/content/res/Configuration;

    invoke-direct {p0, p2, p3}, Lc/a/o/d;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Configuration;)V
    .registers 3

    if-eqz p1, :cond_7

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k$b;->f:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2
    :cond_7
    invoke-super {p0, p1}, Lc/a/o/d;->a(Landroid/content/res/Configuration;)V

    return-void
.end method
