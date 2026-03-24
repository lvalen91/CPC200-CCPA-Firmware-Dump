.class Lcn/manstep/phonemirrorBox/MainActivity$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/MainActivity;->l1(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:J

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcn/manstep/phonemirrorBox/MainActivity;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/MainActivity;JZLjava/lang/String;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$s;->e:Lcn/manstep/phonemirrorBox/MainActivity;

    iput-wide p2, p0, Lcn/manstep/phonemirrorBox/MainActivity$s;->b:J

    iput-boolean p4, p0, Lcn/manstep/phonemirrorBox/MainActivity$s;->c:Z

    iput-object p5, p0, Lcn/manstep/phonemirrorBox/MainActivity$s;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    new-instance p1, Lcn/manstep/phonemirrorBox/k0/f$b;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity$s;->e:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-direct {p1, v0}, Lcn/manstep/phonemirrorBox/k0/f$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/k0/f$b;->b()Lcn/manstep/phonemirrorBox/k0/f;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 3
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/MainActivity$s;->b:J

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Lcn/manstep/phonemirrorBox/k0/f;->j(I)V

    .line 4
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    const/16 v1, 0x19

    .line 5
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    .line 6
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b1()Z

    .line 7
    :cond_25
    invoke-static {}, Lcn/manstep/phonemirrorBox/util/b0;->m()Lcn/manstep/phonemirrorBox/util/b0;

    move-result-object v0

    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/MainActivity$s;->c:Z

    new-instance v2, Lcn/manstep/phonemirrorBox/MainActivity$s$a;

    invoke-direct {v2, p0, p1}, Lcn/manstep/phonemirrorBox/MainActivity$s$a;-><init>(Lcn/manstep/phonemirrorBox/MainActivity$s;Lcn/manstep/phonemirrorBox/k0/f;)V

    invoke-virtual {v0, v1, v2}, Lcn/manstep/phonemirrorBox/util/b0;->j(ZLcn/manstep/phonemirrorBox/util/p$f;)V

    return-void
.end method
