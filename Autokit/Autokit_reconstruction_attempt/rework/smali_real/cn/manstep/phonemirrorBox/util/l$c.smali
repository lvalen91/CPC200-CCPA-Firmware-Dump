.class Lcn/manstep/phonemirrorBox/util/l$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/util/l;->A(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/util/l;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/util/l;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/l$c;->b:Lcn/manstep/phonemirrorBox/util/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/l$c;->b:Lcn/manstep/phonemirrorBox/util/l;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lcn/manstep/phonemirrorBox/util/l;->b(Lcn/manstep/phonemirrorBox/util/l;ILjava/lang/Object;)V

    return-void
.end method
