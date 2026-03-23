.class public Lcn/manstep/phonemirrorBox/l0/v;
.super Lcn/manstep/phonemirrorBox/l0/m;
.implements Lcn/manstep/phonemirrorBox/x0/d$d;
.source "SourceFile"

.field private c0:Lcn/manstep/phonemirrorBox/x0/d;

.field private d0:Lcn/manstep/phonemirrorBox/i0/q;

.field private e0:I

.field private f0:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field private g0:Z

.field private h0:Landroid/os/Handler;

.field private i0:Ljava/lang/Runnable;

.method public constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l0/m;-><init>()V
    const/4 v0, 0
  .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/l0/v;->e0:I
  .line 3
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct { v1 }, Ljava/util/ArrayList;-><init>()V
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/l0/v;->f0:Ljava/util/List;
  .line 4
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/l0/v;->g0:Z
    return-void
.end method

.method static synthetic h2(Lcn/manstep/phonemirrorBox/l0/v;)I
  .registers 1
  .line 1
    iget p0, p0, Lcn/manstep/phonemirrorBox/l0/v;->e0:I
    return p0
.end method

.method static synthetic i2(Lcn/manstep/phonemirrorBox/l0/v;)I
  .registers 3
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/l0/v;->e0:I
    add-int/lit8 v1, v0, 1
    iput v1, p0, Lcn/manstep/phonemirrorBox/l0/v;->e0:I
    return v0
.end method

.method static synthetic j2(Lcn/manstep/phonemirrorBox/l0/v;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Lcn/manstep/phonemirrorBox/l0/v;->g0:Z
    return p0
.end method

.method static synthetic k2(Lcn/manstep/phonemirrorBox/l0/v;Z)Z
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/l0/v;->g0:Z
    return p1
.end method

.method static synthetic l2(Lcn/manstep/phonemirrorBox/l0/v;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l0/v;->t2()V
    return-void
.end method

.method static synthetic m2(Lcn/manstep/phonemirrorBox/l0/v;)Ljava/lang/Runnable;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/l0/v;->i0:Ljava/lang/Runnable;
    return-object p0
.end method

.method static synthetic n2(Lcn/manstep/phonemirrorBox/l0/v;)Landroid/os/Handler;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/l0/v;->h0:Landroid/os/Handler;
    return-object p0
.end method

.method public static newInstance()Lcn/manstep/phonemirrorBox/l0/v;
  .registers 1
  .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/l0/v;
    invoke-direct { v0 }, Lcn/manstep/phonemirrorBox/l0/v;-><init>()V
    return-object v0
.end method

.method static synthetic o2(Lcn/manstep/phonemirrorBox/l0/v;)Ljava/util/List;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/l0/v;->f0:Ljava/util/List;
    return-object p0
.end method

.method static synthetic p2(Lcn/manstep/phonemirrorBox/l0/v;)Lcn/manstep/phonemirrorBox/i0/q;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/l0/v;->d0:Lcn/manstep/phonemirrorBox/i0/q;
    return-object p0
.end method

.method static synthetic q2(Lcn/manstep/phonemirrorBox/l0/v;Landroidx/appcompat/widget/SwitchCompat;I)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/l0/v;->u2(Landroidx/appcompat/widget/SwitchCompat;I)V
    return-void
.end method

.method static synthetic r2(Lcn/manstep/phonemirrorBox/l0/v;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l0/v;->s2()V
    return-void
.end method

.method private s2()V
  .catch Ljava/lang/Exception; { :L1 .. :L2 } :L3
  .registers 5
  .line 1
    new-instance v0, Landroid/content/Intent;
    invoke-direct { v0 }, Landroid/content/Intent;-><init>()V
    const/high16 v1, 4096
  .line 2
    invoke-virtual { v0, v1 }, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
  .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 9
    if-lt v1, v2, :L0
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"
  .line 4
    invoke-virtual { v0, v1 }, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
  .line 5
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v1
    const/4 v2, 0
    const-string v3, "package"
    invoke-static { v3, v1, v2 }, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    goto :L1
  :L0
    const/16 v2, 8
    if-gt v1, v2, :L1
    const-string v1, "android.intent.action.VIEW"
  .line 6
    invoke-virtual { v0, v1 }, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    const-string v1, "com.android.settings"
    const-string v2, "com.android.settings.InstalledAppDetails"
  .line 7
    invoke-virtual { v0, v1, v2 }, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
  .line 8
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v1
    const-string v2, "com.android.settings.ApplicationPkgName"
    invoke-virtual { v0, v2, v1 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
  :L1
  .line 9
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;
    move-result-object v1
    invoke-virtual { v1, v0 }, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
  :L2
    goto :L4
  :L3
    move-exception v0
  .line 10
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, ",getAppDetailSettingIntent: \n"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { v0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "PermissionRequestFragment"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  :L4
    return-void
.end method

.method private t2()V
  .registers 6
  .line 1
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;
    move-result-object v0
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"
    invoke-static { v0, v1 }, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I
    move-result v0
    const/4 v1, 1
    const-string v2, "PermissionRequestFragment"
    const/4 v3, 0
    if-eqz v0, :L1
  .line 2
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;
    move-result-object v0
    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"
    invoke-static { v0, v4 }, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I
    move-result v0
    if-nez v0, :L0
    goto :L1
  :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/v;->d0:Lcn/manstep/phonemirrorBox/i0/q;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/i0/q;->w:Landroidx/appcompat/widget/SwitchCompat;
    invoke-virtual { v0, v3 }, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V
    const-string v0, "request location permission fail"
  .line 4
    invoke-static { v2, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    goto :L2
  :L1
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/v;->d0:Lcn/manstep/phonemirrorBox/i0/q;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/i0/q;->w:Landroidx/appcompat/widget/SwitchCompat;
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/v;->d0:Lcn/manstep/phonemirrorBox/i0/q;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/i0/q;->w:Landroidx/appcompat/widget/SwitchCompat;
    invoke-virtual { v0, v3 }, Landroid/widget/CompoundButton;->setEnabled(Z)V
    const-string v0, "request location permission successful"
  .line 7
    invoke-static { v2, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  :L2
  .line 8
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;
    move-result-object v0
    const-string v4, "android.permission.RECORD_AUDIO"
    invoke-static { v0, v4 }, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I
    move-result v0
    if-nez v0, :L3
  .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/v;->d0:Lcn/manstep/phonemirrorBox/i0/q;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/i0/q;->x:Landroidx/appcompat/widget/SwitchCompat;
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V
  .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/v;->d0:Lcn/manstep/phonemirrorBox/i0/q;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/i0/q;->x:Landroidx/appcompat/widget/SwitchCompat;
    invoke-virtual { v0, v3 }, Landroid/widget/CompoundButton;->setEnabled(Z)V
    const-string v0, "request mic permission successful"
  .line 11
    invoke-static { v2, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    goto :L4
  :L3
  .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/v;->d0:Lcn/manstep/phonemirrorBox/i0/q;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/i0/q;->x:Landroidx/appcompat/widget/SwitchCompat;
    invoke-virtual { v0, v3 }, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V
    const-string v0, "request mic permission fail"
  .line 13
    invoke-static { v2, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  :L4
  .line 14
    iput-boolean v3, p0, Lcn/manstep/phonemirrorBox/l0/v;->g0:Z
    return-void
.end method

.method private u2(Landroidx/appcompat/widget/SwitchCompat;I)V
  .registers 7
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 29
    if-lt v0, v1, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "hasCallbacks: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/v;->h0:Landroid/os/Handler;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/l0/v;->i0:Ljava/lang/Runnable;
    invoke-virtual { v1, v2 }, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "PermissionRequestFragment"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/v;->h0:Landroid/os/Handler;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/v;->i0:Ljava/lang/Runnable;
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z
    move-result v0
    if-nez v0, :L0
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/v;->h0:Landroid/os/Handler;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/v;->i0:Ljava/lang/Runnable;
    const-wide/16 v2, 2000
    invoke-virtual { v0, v1, v2, v3 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
  :L0
    const/4 v0, 0
    if-nez p2, :L1
  .line 5
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/v;->d0:Lcn/manstep/phonemirrorBox/i0/q;
    iget-object v1, v1, Lcn/manstep/phonemirrorBox/i0/q;->w:Landroidx/appcompat/widget/SwitchCompat;
    invoke-virtual { v1, v0 }, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V
  :L1
    const/4 v1, 2
    if-ne p2, v1, :L2
  .line 6
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/v;->d0:Lcn/manstep/phonemirrorBox/i0/q;
    iget-object v1, v1, Lcn/manstep/phonemirrorBox/i0/q;->x:Landroidx/appcompat/widget/SwitchCompat;
    invoke-virtual { v1, v0 }, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V
  :L2
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object v1
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object v2
    invoke-virtual { v1, v2, p2 }, Lcn/manstep/phonemirrorBox/u0/c;->y(Landroid/content/Context;I)I
    move-result p2
    if-ltz p2, :L3
    return-void
  :L3
  .line 8
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/v;->f0:Ljava/util/List;
    invoke-interface { p2 }, Ljava/util/List;->size()I
    move-result p2
    if-lez p2, :L9
  .line 9
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/v;->f0:Ljava/util/List;
    new-array v1, v0, [Ljava/lang/String;
    invoke-interface { p2, v1 }, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    move-result-object p2
    check-cast p2, [Ljava/lang/String;
  :L4
  .line 10
    array-length v1, p2
    const-string v2, "showRequestPermission"
    if-ge v0, v1, :L6
  .line 11
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->J1()Landroidx/fragment/app/e;
    move-result-object v1
    aget-object v3, p2, v0
    invoke-static { v1, v3 }, Landroidx/core/app/a;->p(Landroid/app/Activity;Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L5
  .line 12
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v1
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    invoke-virtual { v1, v2, v3 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
  :L5
    add-int/lit8 v0, v0, 1
    goto :L4
  :L6
  .line 13
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->d0()Landroid/content/res/Resources;
    move-result-object v0
    const v1, 2131034120
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result v0
    if-eqz v0, :L7
  .line 14
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;
    move-result-object v0
    const v1, 2131886087
    const-string v2, "use_permission_tips"
    invoke-static { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/util/n;->t(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v0
  .line 15
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;
    move-result-object v1
    new-instance v2, Lcn/manstep/phonemirrorBox/l0/v$e;
    invoke-direct { v2, p0, p2 }, Lcn/manstep/phonemirrorBox/l0/v$e;-><init>(Lcn/manstep/phonemirrorBox/l0/v;[Ljava/lang/String;)V
    new-instance p2, Lcn/manstep/phonemirrorBox/l0/v$f;
    invoke-direct { p2, p0, p1 }, Lcn/manstep/phonemirrorBox/l0/v$f;-><init>(Lcn/manstep/phonemirrorBox/l0/v;Landroidx/appcompat/widget/SwitchCompat;)V
    invoke-static { v1, v0, v2, p2 }, Lcn/manstep/phonemirrorBox/k0/a;->J2(Landroidx/fragment/app/n;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    goto :L9
  :L7
  .line 16
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    const/4 v0, 1
    invoke-virtual { p1, v2, v0 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result p1
    if-eqz p1, :L8
  .line 17
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->J1()Landroidx/fragment/app/e;
    move-result-object p1
    const/16 v0, 1000
    invoke-static { p1, p2, v0 }, Landroidx/core/app/a;->m(Landroid/app/Activity;[Ljava/lang/String;I)V
    goto :L9
  :L8
  .line 18
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l0/v;->s2()V
  :L9
    return-void
.end method

.method public E0(Landroid/content/Context;)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Lcn/manstep/phonemirrorBox/l0/m;->E0(Landroid/content/Context;)V
    return-void
.end method

.method public L0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
  .registers 5
    const p3, 2131492943
    const/4 v0, 0
  .line 1
    invoke-static { p1, p3, p2, v0 }, Landroidx/databinding/f;->e(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/i0/q;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/v;->d0:Lcn/manstep/phonemirrorBox/i0/q;
  .line 2
    invoke-virtual { p1, p0 }, Landroidx/databinding/ViewDataBinding;->G(Landroidx/lifecycle/j;)V
  .line 3
    new-instance p1, Landroidx/lifecycle/w;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->J1()Landroidx/fragment/app/e;
    move-result-object p2
    iget-object p3, p0, Lcn/manstep/phonemirrorBox/l0/m;->a0:Landroidx/lifecycle/w$b;
    invoke-direct { p1, p2, p3 }, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/y;Landroidx/lifecycle/w$b;)V
    const-class p2, Lcn/manstep/phonemirrorBox/x0/d;
    invoke-virtual { p1, p2 }, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/x0/d;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/v;->c0:Lcn/manstep/phonemirrorBox/x0/d;
  .line 4
    invoke-virtual { p1, p0 }, Lcn/manstep/phonemirrorBox/x0/d;->u(Lcn/manstep/phonemirrorBox/x0/d$d;)V
  .line 5
    new-instance p1, Landroid/os/Handler;
    invoke-direct { p1 }, Landroid/os/Handler;-><init>()V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/v;->h0:Landroid/os/Handler;
  .line 6
    new-instance p1, Lcn/manstep/phonemirrorBox/l0/v$a;
    invoke-direct { p1, p0 }, Lcn/manstep/phonemirrorBox/l0/v$a;-><init>(Lcn/manstep/phonemirrorBox/l0/v;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/v;->i0:Ljava/lang/Runnable;
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/v;->d0:Lcn/manstep/phonemirrorBox/i0/q;
    invoke-virtual { p1 }, Landroidx/databinding/ViewDataBinding;->t()Landroid/view/View;
    move-result-object p1
    return-object p1
.end method

.method public O0()V
  .registers 3
  .line 1
    invoke-super { p0 }, Landroidx/fragment/app/Fragment;->O0()V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/v;->h0:Landroid/os/Handler;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/v;->i0:Ljava/lang/Runnable;
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    const/4 v0, 0
  .line 3
    iput v0, p0, Lcn/manstep/phonemirrorBox/l0/v;->e0:I
    const/4 v0, 0
  .line 4
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l0/v;->d0:Lcn/manstep/phonemirrorBox/i0/q;
    return-void
.end method

.method public P0()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/v;->c0:Lcn/manstep/phonemirrorBox/x0/d;
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/x0/d;->z(Lcn/manstep/phonemirrorBox/x0/d$d;)V
  .line 2
    invoke-super { p0 }, Landroidx/fragment/app/Fragment;->P0()V
    return-void
.end method

.method public c1()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroidx/fragment/app/Fragment;->c1()V
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/l0/v;->g0:Z
  .line 3
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l0/v;->t2()V
    return-void
.end method

.method public g1(Landroid/view/View;Landroid/os/Bundle;)V
  .registers 3
  .line 1
    invoke-super { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/l0/m;->g1(Landroid/view/View;Landroid/os/Bundle;)V
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/v;->d0:Lcn/manstep/phonemirrorBox/i0/q;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/q;->v:Landroid/widget/ImageView;
    new-instance p2, Lcn/manstep/phonemirrorBox/l0/v$b;
    invoke-direct { p2, p0 }, Lcn/manstep/phonemirrorBox/l0/v$b;-><init>(Lcn/manstep/phonemirrorBox/l0/v;)V
    invoke-virtual { p1, p2 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/v;->d0:Lcn/manstep/phonemirrorBox/i0/q;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/q;->x:Landroidx/appcompat/widget/SwitchCompat;
    new-instance p2, Lcn/manstep/phonemirrorBox/l0/v$c;
    invoke-direct { p2, p0 }, Lcn/manstep/phonemirrorBox/l0/v$c;-><init>(Lcn/manstep/phonemirrorBox/l0/v;)V
    invoke-virtual { p1, p2 }, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/v;->d0:Lcn/manstep/phonemirrorBox/i0/q;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/q;->w:Landroidx/appcompat/widget/SwitchCompat;
    new-instance p2, Lcn/manstep/phonemirrorBox/l0/v$d;
    invoke-direct { p2, p0 }, Lcn/manstep/phonemirrorBox/l0/v$d;-><init>(Lcn/manstep/phonemirrorBox/l0/v;)V
    invoke-virtual { p1, p2 }, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    return-void
.end method

.method protected g2()V
  .registers 2
  .line 1
    invoke-super { p0 }, Lcn/manstep/phonemirrorBox/l0/m;->g2()V
  .line 2
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object v0
    instance-of v0, v0, Lcn/manstep/phonemirrorBox/l0/s;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/l0/s;
    invoke-interface { v0, p0 }, Lcn/manstep/phonemirrorBox/l0/s;->f(Landroidx/fragment/app/Fragment;)V
  :L0
    return-void
.end method

.method public k()V
  .registers 1
    return-void
.end method

.method public m(I)V
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "onConnectChanged: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    const-string v0, "PermissionRequestFragment"
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method
