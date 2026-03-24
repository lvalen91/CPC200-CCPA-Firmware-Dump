.class Lcn/manstep/phonemirrorBox/MainActivity$t;
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
.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcn/manstep/phonemirrorBox/MainActivity;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/MainActivity;ZLjava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$t;->d:Lcn/manstep/phonemirrorBox/MainActivity;

    iput-boolean p2, p0, Lcn/manstep/phonemirrorBox/MainActivity$t;->b:Z

    iput-object p3, p0, Lcn/manstep/phonemirrorBox/MainActivity$t;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$t;->b:Z

    if-eqz p1, :cond_f

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$t;->d:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/MainActivity;->y0(Lcn/manstep/phonemirrorBox/MainActivity;)V

    .line 3
    :cond_f
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity$t;->b:Z

    if-eqz v0, :cond_1a

    const-string v0, "AppLatestVer"

    goto :goto_1c

    :cond_1a
    const-string v0, "BoxLatestVer"

    :goto_1c
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity$t;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
