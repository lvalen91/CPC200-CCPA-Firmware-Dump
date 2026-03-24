.class Lcn/manstep/phonemirrorBox/MainActivity$s$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/MainActivity$s$a;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/MainActivity$s$a;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/MainActivity$s$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$s$a$a;->b:Lcn/manstep/phonemirrorBox/MainActivity$s$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$s$a$a;->b:Lcn/manstep/phonemirrorBox/MainActivity$s$a;

    iget-object p1, p1, Lcn/manstep/phonemirrorBox/MainActivity$s$a;->b:Lcn/manstep/phonemirrorBox/MainActivity$s;

    iget-object p1, p1, Lcn/manstep/phonemirrorBox/MainActivity$s;->e:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-static {}, Lcn/manstep/phonemirrorBox/util/b0;->m()Lcn/manstep/phonemirrorBox/util/b0;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/util/b0;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/manstep/phonemirrorBox/util/c0;->o(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
