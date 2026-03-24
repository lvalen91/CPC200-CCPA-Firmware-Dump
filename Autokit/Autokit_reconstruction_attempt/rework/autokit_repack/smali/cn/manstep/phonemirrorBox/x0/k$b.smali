.class Lcn/manstep/phonemirrorBox/x0/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/x0/k;->F0(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;

.field final synthetic c:Lcn/manstep/phonemirrorBox/x0/k;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/x0/k;Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/k$b;->c:Lcn/manstep/phonemirrorBox/x0/k;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/x0/k$b;->b:Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/manstep/phonemirrorBox/g0/c;

    .line 2
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/x0/k$b;->b:Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;

    invoke-virtual {p2, p3}, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->setCurIndex(I)V

    .line 3
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/x0/k$b;->c:Lcn/manstep/phonemirrorBox/x0/k;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/g0/c;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcn/manstep/phonemirrorBox/x0/k;->G0(Ljava/lang/String;)V

    return-void
.end method
