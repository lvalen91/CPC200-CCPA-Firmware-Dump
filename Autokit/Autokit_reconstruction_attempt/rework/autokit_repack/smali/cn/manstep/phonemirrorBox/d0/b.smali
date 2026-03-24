.class public final synthetic Lcn/manstep/phonemirrorBox/d0/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcn/manstep/phonemirrorBox/util/m;


# direct methods
.method public synthetic constructor <init>(Lcn/manstep/phonemirrorBox/util/m;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/d0/b;->a:Lcn/manstep/phonemirrorBox/util/m;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d0/b;->a:Lcn/manstep/phonemirrorBox/util/m;

    invoke-static {v0, p1, p2}, Lcn/manstep/phonemirrorBox/d0/i;->u(Lcn/manstep/phonemirrorBox/util/m;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
