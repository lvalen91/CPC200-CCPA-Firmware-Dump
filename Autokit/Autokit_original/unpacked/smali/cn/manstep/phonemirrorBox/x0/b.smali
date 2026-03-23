.class public Lcn/manstep/phonemirrorBox/x0/b;
.super Landroidx/lifecycle/v;
.source "SourceFile"

.field private c:[Ljava/lang/String;

.field private d:Landroidx/lifecycle/o;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroidx/lifecycle/o<",
      "Ljava/lang/Integer;",
      ">;"
    }
  .end annotation
.end field

.method public constructor <init>()V
  .registers 4
  .line 1
    invoke-direct { p0 }, Landroidx/lifecycle/v;-><init>()V
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "MicType"
    const/4 v2, 0
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v0
  .line 3
    new-instance v1, Landroidx/lifecycle/o;
    invoke-direct { v1 }, Landroidx/lifecycle/o;-><init>()V
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/x0/b;->d:Landroidx/lifecycle/o;
  .line 4
    invoke-static { v0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-virtual { v1, v0 }, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V
  .line 5
    new-instance v0, Landroidx/lifecycle/o;
    invoke-direct { v0 }, Landroidx/lifecycle/o;-><init>()V
  .line 6
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/x0/b;->i()V
    return-void
.end method

.method public i()V
  .registers 4
    const/4 v0, 3
    new-array v0, v0, [Ljava/lang/String;
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/app/Application;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    const v2, 2131689639
    invoke-virtual { v1, v2 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    const/4 v2, 0
    aput-object v1, v0, v2
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/app/Application;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    const v2, 2131689906
    invoke-virtual { v1, v2 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    const/4 v2, 1
    aput-object v1, v0, v2
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/app/Application;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    const v2, 2131689611
    invoke-virtual { v1, v2 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    const/4 v2, 2
    aput-object v1, v0, v2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/x0/b;->c:[Ljava/lang/String;
  .line 4
    new-instance v0, Landroidx/lifecycle/o;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/b;->c:[Ljava/lang/String;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/x0/b;->d:Landroidx/lifecycle/o;
    invoke-virtual { v2 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/Integer;
    invoke-virtual { v2 }, Ljava/lang/Integer;->intValue()I
    move-result v2
    aget-object v1, v1, v2
    invoke-direct { v0, v1 }, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V
    return-void
.end method
