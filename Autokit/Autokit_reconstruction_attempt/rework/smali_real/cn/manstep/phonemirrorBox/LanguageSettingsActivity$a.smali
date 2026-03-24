.class Lcn/manstep/phonemirrorBox/LanguageSettingsActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/LanguageSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/d0/k;

.field final synthetic c:Lcn/manstep/phonemirrorBox/LanguageSettingsActivity;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/LanguageSettingsActivity;Lcn/manstep/phonemirrorBox/d0/k;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/LanguageSettingsActivity$a;->c:Lcn/manstep/phonemirrorBox/LanguageSettingsActivity;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/LanguageSettingsActivity$a;->b:Lcn/manstep/phonemirrorBox/d0/k;

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
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/LanguageSettingsActivity$a;->b:Lcn/manstep/phonemirrorBox/d0/k;

    invoke-virtual {p1, p3}, Lcn/manstep/phonemirrorBox/d0/k;->a(I)V

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/LanguageSettingsActivity$a;->b:Lcn/manstep/phonemirrorBox/d0/k;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/LanguageSettingsActivity$a;->c:Lcn/manstep/phonemirrorBox/LanguageSettingsActivity;

    invoke-static {p1, p3}, Lcn/manstep/phonemirrorBox/LanguageSettingsActivity;->n0(Lcn/manstep/phonemirrorBox/LanguageSettingsActivity;I)I

    return-void
.end method
