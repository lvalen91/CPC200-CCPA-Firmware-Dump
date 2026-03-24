.class Lcn/manstep/phonemirrorBox/MainActivity$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/MainActivity;->h1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcn/manstep/phonemirrorBox/MainActivity;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/MainActivity;Ljava/util/List;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$n;->c:Lcn/manstep/phonemirrorBox/MainActivity;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/MainActivity$n;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$n;->b:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity$n;->c:Lcn/manstep/phonemirrorBox/MainActivity;

    const/16 v1, 0x3e8

    invoke-static {v0, p1, v1}, Landroidx/core/app/a;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
