.class Lcn/manstep/phonemirrorBox/x0/k$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/x0/k;->s0(Landroid/view/View;)V
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
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/k$d;->c:Lcn/manstep/phonemirrorBox/x0/k;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/x0/k$d;->b:Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;

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
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/k$d;->c:Lcn/manstep/phonemirrorBox/x0/k;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/x0/k;->o(Lcn/manstep/phonemirrorBox/x0/k;)Landroidx/lifecycle/o;

    move-result-object p1

    sget-object p2, Lcn/manstep/phonemirrorBox/util/e;->a:[I

    aget p2, p2, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/k$d;->b:Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;

    invoke-virtual {p1, p3}, Lcn/manstep/phonemirrorBox/customview/SelectTextSettingsItem;->setCurIndex(I)V

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    sget-object p2, Lcn/manstep/phonemirrorBox/util/e;->a:[I

    aget p2, p2, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p4, "fps"

    invoke-virtual {p1, p4, p2}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    sget-object p1, Lcn/manstep/phonemirrorBox/util/e;->a:[I

    aget p1, p1, p3

    sput p1, Lcn/manstep/phonemirrorBox/p;->C:I

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 6
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    sget-object p2, Lcn/manstep/phonemirrorBox/util/e;->a:[I

    aget p2, p2, p3

    invoke-virtual {p1, p2}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->c0(I)Z

    :cond_3c
    return-void
.end method
