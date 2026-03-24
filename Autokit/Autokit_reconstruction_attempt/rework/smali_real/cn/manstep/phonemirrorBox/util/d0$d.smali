.class Lcn/manstep/phonemirrorBox/util/d0$d;
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
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/manstep/phonemirrorBox/k0/d;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/util/d0;Ljava/lang/String;Lcn/manstep/phonemirrorBox/k0/d;)V
    .registers 4

    .line 1
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/util/d0$d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/manstep/phonemirrorBox/util/d0$d;->c:Lcn/manstep/phonemirrorBox/k0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/d0$d;->b:Ljava/lang/String;

    const-string v1, "AppLatestVer"

    invoke-virtual {p1, v1, v0}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/d0$d;->c:Lcn/manstep/phonemirrorBox/k0/d;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
