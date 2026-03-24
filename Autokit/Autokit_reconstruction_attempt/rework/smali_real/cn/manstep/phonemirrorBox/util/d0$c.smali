.class Lcn/manstep/phonemirrorBox/util/d0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/util/d0;->k(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/k0/d;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:I

.field final synthetic g:Lcn/manstep/phonemirrorBox/util/d0;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/util/d0;Lcn/manstep/phonemirrorBox/k0/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/d0$c;->g:Lcn/manstep/phonemirrorBox/util/d0;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/util/d0$c;->b:Lcn/manstep/phonemirrorBox/k0/d;

    iput-object p3, p0, Lcn/manstep/phonemirrorBox/util/d0$c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/manstep/phonemirrorBox/util/d0$c;->d:Ljava/lang/String;

    iput-object p5, p0, Lcn/manstep/phonemirrorBox/util/d0$c;->e:Ljava/lang/String;

    iput p6, p0, Lcn/manstep/phonemirrorBox/util/d0$c;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/d0$c;->b:Lcn/manstep/phonemirrorBox/k0/d;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    new-instance p1, Lcn/manstep/phonemirrorBox/k0/f$b;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/d0$c;->g:Lcn/manstep/phonemirrorBox/util/d0;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/d0;->d(Lcn/manstep/phonemirrorBox/util/d0;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcn/manstep/phonemirrorBox/k0/f$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/k0/f$b;->b()Lcn/manstep/phonemirrorBox/k0/f;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/d0$c;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/k0/f;->j(I)V

    .line 5
    new-instance v0, Lcn/manstep/phonemirrorBox/util/p;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcn/manstep/phonemirrorBox/util/p;-><init>(I)V

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 7
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/util/d0$c;->d:Ljava/lang/String;

    const-string v3, "ver"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/util/d0$c;->e:Ljava/lang/String;

    const-string v3, "id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/util/d0$c;->g:Lcn/manstep/phonemirrorBox/util/d0;

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/d0;->d(Lcn/manstep/phonemirrorBox/util/d0;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/c0;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 10
    new-instance v3, Lcn/manstep/phonemirrorBox/util/d0$c$a;

    invoke-direct {v3, p0, p1, v2}, Lcn/manstep/phonemirrorBox/util/d0$c$a;-><init>(Lcn/manstep/phonemirrorBox/util/d0$c;Lcn/manstep/phonemirrorBox/k0/f;Ljava/lang/String;)V

    const-string p1, "/a/upgrade/down"

    invoke-virtual {v0, p1, v1, v2, v3}, Lcn/manstep/phonemirrorBox/util/p;->d(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcn/manstep/phonemirrorBox/util/p$f;)V

    return-void
.end method
